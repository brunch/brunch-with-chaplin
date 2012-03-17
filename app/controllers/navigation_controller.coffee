Controller = require 'controllers/controller'
Navigation = require 'models/navigation'
NavigationView = require 'views/navigation_view'

module.exports = class NavigationController extends Controller
  initialize: ->
    super
    #console.debug 'NavigationController#initialize'
    @model = new Navigation()
    @view = new NavigationView model: @model
