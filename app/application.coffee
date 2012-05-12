mediator = require 'mediator'
ChaplinApplication = require 'chaplin/application'
SessionController = require 'controllers/session_controller'
NavigationController = require 'controllers/navigation_controller'
SidebarController = require 'controllers/sidebar_controller'
routes = require 'routes'

# The application bootstrapper.
module.exports = class Application extends ChaplinApplication
  title: 'Example brunch application'

  initialize: ->
    ###console.debug 'ExampleApplication#initialize'###

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

    # Finish
    # ------

    # Freeze the application instance to prevent further changes
    Object.freeze? this
