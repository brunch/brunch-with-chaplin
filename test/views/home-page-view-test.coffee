HomePageView = require 'views/home-page-view'

describe 'HomePageView', ->
  beforeEach ->
    @view = new HomePageView

  afterEach ->
    @view.dispose()

  it 'should auto-render', ->
    expect(@view.$el.find 'img').to.have.length 1
