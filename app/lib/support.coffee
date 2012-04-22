utils = require 'lib/utils'
chaplinSupport = require 'chaplin/lib/support'

# Application-specific feature detection
# --------------------------------------

# Delegate to Chaplin’s support module
module.exports = support = utils.beget chaplinSupport

# _(support).extend
  # someMethod: ->
