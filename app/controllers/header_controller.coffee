Controller = require 'controllers/base/controller'
mediator = require 'mediator'
Header = require 'models/header'
HeaderView = require 'views/header_view'

module.exports = class HeaderController extends Controller
  initialize: ->
    super
    @model = new Header()
    @view = new HeaderView({@model})
