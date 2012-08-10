Model = require 'models/base/model'

module.exports = class Header extends Model
  defaults:
    items: [
      {href: './test/', title: 'App Tests'},
      {href: 'http://brunch.readthedocs.org/', title: 'Docs'},
      {href: 'https://github.com/brunch/brunch/issues', title: 'Github Issues'},
      {href: 'https://github.com/paulmillr/ostio', title: 'Ost.io Example App'},
    ]
