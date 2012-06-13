Chaplin = require 'chaplin'

module.exports = class Layout extends Chaplin.Layout
  initialize: ->
    super
    # @subscribeEvent 'startupController', @doSomething
