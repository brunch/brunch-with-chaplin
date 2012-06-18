HomePageView = require 'views/home_page_view'

describe 'HomePageView', ->
  @view = null

  beforeEach =>
    @view = new HomePageView

  afterEach =>
    @view.dispose()

  it 'should auto-render', =>
    expect(@view.$el.find 'h1').to.have.length 1
