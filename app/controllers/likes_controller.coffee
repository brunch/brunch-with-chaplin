Controller = require 'controllers/controller'
Likes = require 'models/likes'
Like = require 'models/like'
LikesView = require 'views/likes_view'
FullLikeView = require 'views/full_like_view'

module.exports = class LikesController extends Controller
  historyURL: (params) ->
    if params.id then "likes/#{params.id}" else ''
      
  index: (params) ->
    #console.debug 'LikesController#index'
    @collection = new Likes()
    @view = new LikesView collection: @collection

  show: (params) ->
    #console.debug 'LikesController#show'
    @model = new Like {id: params.id}, {loadDetails: true}
    @view = new FullLikeView model: @model
