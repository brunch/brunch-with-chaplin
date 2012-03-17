Controller = require 'controllers/controller'
Posts = require 'models/posts'
PostsView = require 'views/posts_view'

module.exports = class PostsController extends Controller
  historyURL: 'posts'

  index: (params) ->
    #console.debug 'PostsController#index'
    @collection = new Posts()
    @view = new PostsView collection: @collection
