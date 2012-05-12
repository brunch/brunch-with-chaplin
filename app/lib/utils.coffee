mediator = require 'mediator'
chaplinUtils = require 'chaplin/lib/utils'

# Application-specific utilities
# ------------------------------

# Delegate to Chaplin’s utils module
utils = chaplinUtils.beget chaplinUtils

#_(utils).extend
  # someMethod: ->

module.exports = utils
