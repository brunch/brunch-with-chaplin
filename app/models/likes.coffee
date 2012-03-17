mediator = require 'mediator'
Collection = require 'models/collection'
Like = require 'models/like'

module.exports = class Likes extends Collection
  model: Like

  initialize: ->
    super

    # Mixin a Deferred
    _(this).extend $.Deferred()

    @getLikes()
    @subscribeEvent 'login', @getLikes
    @subscribeEvent 'logout', @reset

  getLikes: ->
    #console.debug 'Likes#getLikes'

    user = mediator.user
    return unless user

    provider = user.get 'provider'
    return unless provider.name is 'facebook'

    @trigger 'loadStart'
    provider.getInfo '/me/likes', @processLikes

  processLikes: (response) =>
    #console.debug 'Likes#processLikes', response, response.data

    # Trigger before updating the collection to hide the loading spinner
    @trigger 'load'

    # Update the collection
    @reset(if response and response.data then response.data else [])

    # Resolve the Deferred
    @resolve()
