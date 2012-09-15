Application = require 'application'

# Initialize the application on DOM ready event.
$(document).on 'ready', ->
  app = new Application()
  app.initialize()
