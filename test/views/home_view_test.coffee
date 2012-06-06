HomeView = require 'views/home_view'

describe 'HomeView', ->
  
  beforeEach ->
    @view = new HomeView

  afterEach ->
    @view.dispose()
  
  it 'should auto-render', ->
    expect(@view.$el.find 'h1').to.have.length 1
