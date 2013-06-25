View = require './base/view'
template = require './templates/site'

# Site view is a top-level view which is bound to body.
module.exports = class SiteView extends View
  container: 'body'
  id: 'site-container'
  regions:
    '#header-container': 'header'
    '#page-container': 'main'
  template: template
