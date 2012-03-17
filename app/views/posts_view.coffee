mediator = require 'mediator'
CollectionView = require 'views/collection_view'
PostView = require 'views/post_view'
template = require './templates/posts'

module.exports = class PostsView extends CollectionView

  # This is a workaround.
  # In the end you might want to used precompiled templates.
  @template: template

  tagName: 'div' # This is not directly a list but contains a list
  id: 'posts'

  containerSelector: '#content-container'
  listSelector: 'ol' # Append the item views to this element
  fallbackSelector: '.fallback'

  initialize: ->
    super # Will render the list itself and all items
    @subscribeEvent 'loginStatus', @showHideLoginNote

  # The most important method a class inheriting from CollectionView
  # must overwrite.
  getView: (item) ->
    # Instantiate an item view
    new PostView model: item

  # Show/hide a login appeal if not logged in
  showHideLoginNote: ->
    @$('.login-note').css 'display', if mediator.user then 'none' else 'block'

  render: ->
    super
    @showHideLoginNote()
