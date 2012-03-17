View = require 'views/view'
template = require './templates/post'

module.exports = class PostView extends View
  # This is a workaround.
  # In the end you might want to used precompiled templates.
  @template = template

  tagName: 'li'
  className: 'post'
