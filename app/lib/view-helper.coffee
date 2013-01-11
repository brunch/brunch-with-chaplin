mediator = require '/mediator'

# Application-specific view helpers
# http://handlebarsjs.com/#helpers
# --------------------------------

register = Handlebars.registerHelper

# Map helpers
# -----------

# Make 'with' behave a little more mustachey
register 'with', (context, options) ->
  if not context or Handlebars.Utils.isEmpty context
    options.inverse(this)
  else
    options.fn(context)

# Inverse for 'with'
register 'without', (context, options) ->
  inverse = options.inverse
  options.inverse = options.fn
  options.fn = inverse
  Handlebars.helpers.with.call(this, context, options)
