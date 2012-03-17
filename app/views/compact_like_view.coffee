View = require 'views/view'
template = require './templates/compact_like'

module.exports = class CompactLikeView extends View
  # This is a workaround.
  # In the end you might want to used precompiled templates.
  @template = template

  tagName: 'li'
  className: 'like'
