ChaplinView = require 'chaplin/views/view'
require 'lib/view_helper'

module.exports = class View extends ChaplinView
  getTemplateFunction: ->
    @template
