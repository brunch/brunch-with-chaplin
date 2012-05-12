mediator = require 'mediator'
View = require 'views/view'
template = require 'views/templates/navigation'

module.exports = class NavigationView extends View
  template: template
  id: 'navigation'
  className: 'navigation'
  containerSelector: '#navigation-container'
  autoRender: true

  initialize: ->
    super
    #console.debug 'NavigationView#initialize'
    @subscribeEvent 'loginStatus', @render
    @subscribeEvent 'startupController', @render
