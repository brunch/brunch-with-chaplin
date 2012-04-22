template = require './templates/home'
View = require './view'

module.exports = class HomeView extends View
  template: template
  containerSelector: '#content-container'
  className: 'home'
  autoRender: yes

  initialize: ->
    super
