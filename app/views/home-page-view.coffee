template = require 'views/templates/home'
View = require 'views/base/view'

module.exports = class HomePageView extends View
  autoRender: yes
  className: 'home-page'
  container: '#page-container'
  template: template
