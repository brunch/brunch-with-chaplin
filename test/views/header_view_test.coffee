mediator = require 'mediator'
Navigation = require 'models/navigation'
NavigationView = require 'views/navigation_view'

class NavigationViewTest extends NavigationView
  renderTimes: 0

  render: ->
    super
    @renderTimes += 1

describe 'NavigationView', ->
  beforeEach =>
    @model = new Navigation
    @view = new NavigationViewTest({@model})

  afterEach =>
    @view.dispose()
    @model.dispose()

  it 'should display 3 links', =>
    expect(@view.$el.find 'a').to.have.length 3

  it 'should re-render on login event', =>
    expect(@view.renderTimes).to.be 1
    mediator.publish 'loginStatus'
    expect(@view.renderTimes).to.be 2
