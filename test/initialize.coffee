tests = require 'test/modules'

mocha.setup('bdd')
expect = chai.expect

for testPath in tests
  require "test/#{testPath}_test"

$ ->
  mocha.run()
