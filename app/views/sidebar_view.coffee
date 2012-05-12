mediator = require 'mediator'
View = require 'views/view'
template = require 'views/templates/sidebar'

module.exports = class SidebarView extends View
  template: template
  containerSelector: '#sidebar-container'
