View = require 'views/base/view'
template = require 'views/templates/site'

module.exports = class SiteView extends View
  template: template
  container: 'body'
  id: 'site-container'

  initialize: ->
    super
    @registerRegion '#header-container', 'header'
    @registerRegion '#page-container', 'main'
