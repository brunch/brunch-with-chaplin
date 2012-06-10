mediator = require 'mediator'
Navigation = require 'models/navigation'
NavigationView = require 'views/navigation_view'

describe 'NavigationView', ->
  
  class NavigationViewTest extends NavigationView
    render_times: 0
    
    render: ->
      super
      @render_times++


  beforeEach ->
    @model = new Navigation
    @view = new NavigationViewTest model: @model

  afterEach ->
    @view.dispose()
    @model.dispose()


  it 'should display 3 links', ->
    expect(@view.$el.find 'a').to.have.length 3
    
  it 'should re-render on login event', ->
    expect(@view.render_times).to.equal 1
    mediator.publish 'loginStatus'
    expect(@view.render_times).to.equal 2
