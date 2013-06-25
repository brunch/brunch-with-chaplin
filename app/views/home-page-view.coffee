template = require './templates/home'
View = require './base/view'

module.exports = class HomePageView extends View
  autoRender: true
  className: 'home-page'
  template: template
