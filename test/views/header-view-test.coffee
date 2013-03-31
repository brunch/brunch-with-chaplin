HeaderView = require 'views/header-view'

class HeaderViewTest extends HeaderView
  renderTimes: 0

  render: ->
    super
    @renderTimes += 1

describe 'HeaderView', ->
  beforeEach ->
    @view = new HeaderViewTest

  afterEach ->
    @view.dispose()

  it 'should display 4 links', ->
    expect(@view.$el.find 'a').to.have.length 4
