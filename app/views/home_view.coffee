template = require 'views/templates/home'
View = require 'views/view'

module.exports = class HomeView extends View
  template: template
  containerSelector: '#content-container'
  className: 'home'
  autoRender: yes

  initialize: ->
    super
