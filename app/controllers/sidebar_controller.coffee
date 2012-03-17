Controller = require 'controllers/controller'
SidebarView = require 'views/sidebar_view'

module.exports = class NavigationController extends Controller
  initialize: ->
    @view = new SidebarView()
