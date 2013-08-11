View = require 'views/base/view'

module.exports = class HeaderView extends View
  autoRender: true
  className: 'header'
  region: 'header'
  template: require 'views/templates/header'
