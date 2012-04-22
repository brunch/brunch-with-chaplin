mediator = require 'mediator'
View = require './view'
template = require './templates/sidebar'

module.exports = class SidebarView extends View
  template: template
  containerSelector: '#sidebar-container'
