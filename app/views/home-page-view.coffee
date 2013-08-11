View = require 'views/base/view'

module.exports = class HomePageView extends View
  autoRender: true
  className: 'home-page'
  template: require 'views/templates/home'
