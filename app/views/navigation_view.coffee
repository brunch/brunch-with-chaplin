View = require 'views/view'
template = require './templates/navigation'

module.exports = class NavigationView extends View
  # This is a workaround.
  # In the end you might want to used precompiled templates.
  @template: template

  id: 'navigation'
  containerSelector: '#navigation-container'
  autoRender: true

  initialize: ->
    super
    #console.debug 'NavigationView#initialize'
    @subscribeEvent 'startupController', @render
