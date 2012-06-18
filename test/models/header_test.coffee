Header = require 'models/header'

describe 'Header', ->
  model = null

  beforeEach ->
    model = new Header()

  afterEach ->
    model.dispose()

  it 'should contain 3 items', ->
    expect(model.get 'items').to.have.length 3
