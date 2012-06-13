Chaplin = require 'chaplin'
mediator = require 'mediator'

# Application-specific utilities
# ------------------------------

mediator = Chaplin.mediator

# Delegate to Chaplin’s utils module
utils = Chaplin.utils.beget Chaplin.utils

#_(utils).extend
  # someMethod: ->

module.exports = utils
