View = require 'views/base/view'
template = require 'views/templates/header'

module.exports = class HeaderView extends View
  template: template
  autoRender: true
  className: 'header'
  container: '#header-container'
  id: 'header'
