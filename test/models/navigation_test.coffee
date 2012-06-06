Navigation = require 'models/navigation'

describe 'Navigation', ->
  
  beforeEach ->
    @model = new Navigation

  afterEach ->
    @model.dispose()
  
  it 'should contain 3 items', ->
    expect(@model.get 'items').to.have.length 3
