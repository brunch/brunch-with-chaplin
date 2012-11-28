Controller = require 'controllers/base/controller'
HomePageView = require 'views/home-page-view'

module.exports = class HomeController extends Controller
  historyURL: 'home'
  title: 'Home'

  index: ->
    @view = new HomePageView()
