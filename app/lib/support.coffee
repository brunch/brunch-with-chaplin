utils = require 'lib/utils'
chaplinSupport = require 'chaplin/lib/support'

# Application-specific feature detection
# --------------------------------------

# Delegate to Chaplin’s support module
support = utils.beget chaplinSupport

# _(support).extend
  # someMethod: ->

module.exports = support
