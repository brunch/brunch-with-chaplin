Controller = require './controller'
SidebarView = require 'views/sidebar_view'

module.exports = class SidebarController extends Controller
  initialize: ->
    @view = new SidebarView()
