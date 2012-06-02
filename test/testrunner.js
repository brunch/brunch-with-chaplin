var fs = require('fs');
var join = require('path').join;
var jsdom = require('jsdom');
var Mocha = require('mocha');
require('coffee-script');
var chai = require('chai');

function setupJsEnv(callback) {
  var html = fs.readFileSync('app/assets/index.html').toString();
  var vendorjs = fs.readFileSync('public/javascripts/vendor.js').toString();
  var appjs = fs.readFileSync('public/javascripts/app.js').toString();
  
  jsdom.env({
    html: html,
    src: [vendorjs, appjs],
    done: function (err, window) {
      if (err) {
        console.log(err);
        process.exit(1);
      }
      callback(window);
    }
  });
}

setupJsEnv(function(window) {
  global.window = window;
  global.expect = chai.expect;
  // use native require function for loading tests
  global.window.load_tests = function(tests) {
    tests.forEach(require);
  };
  
  var mocha = new Mocha();
  mocha.reporter('spec').ui('bdd');
  mocha.addFile('test/load_tests.coffee');

  mocha.run(function(failures) {
    process.exit(failures > 0 ? 1 : 0);
  });
});
