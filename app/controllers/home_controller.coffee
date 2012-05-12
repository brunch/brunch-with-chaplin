Controller = require 'controllers/controller'
HomeView = require 'views/home_view'

module.exports = class HomeController extends Controller
  historyURL: 'home'

  index: ->
    @view = new HomeView()
