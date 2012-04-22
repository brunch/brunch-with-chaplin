mediator = require 'mediator'
ChaplinApplication = require 'chaplin/application'
SessionController = require 'controllers/session_controller'
NavigationController = require 'controllers/navigation_controller'
SidebarController = require 'controllers/sidebar_controller'
routes = require 'routes'
support = require 'chaplin/lib/support'

# The application bootstrapper.
module.exports = class Application extends ChaplinApplication
  title: 'Example brunch application'

  initialize: ->
    #console.debug 'Application#initialize'

    super # This creates the AppController and AppView

    # Instantiate common controllers
    # ------------------------------

    new SessionController()
    new NavigationController()
    new SidebarController()

    # Initialize the router
    # ---------------------

    # This creates the mediator.router property and
    # starts the Backbone history.
    @initRouter routes, pushState: no

    # Object sealing
    # --------------

    # Seal the mediator object (prevent extensions and
    # make all properties non-configurable)
    if support.propertyDescriptors and Object.seal
      Object.seal mediator

    # Freeze the application instance to prevent further changes
    Object.freeze? this
