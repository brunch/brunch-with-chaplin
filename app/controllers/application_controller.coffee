Controller = require 'controllers/controller'
ApplicationView = require 'views/application_view'
NavigationController = require 'controllers/navigation_controller'
SidebarController = require 'controllers/sidebar_controller'

module.exports = class ApplicationController extends Controller
  initialize: ->
    @initApplicationView()
    @initSidebars()

  initApplicationView: ->
    new ApplicationView()

  initSidebars: ->
    new NavigationController()
    new SidebarController()
