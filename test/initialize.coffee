tests = [
  'test/models/header_test.coffee',
  'test/views/home_view_test.coffee',
  'test/views/navigation_view_test.coffee'
]

mocha.setup('bdd')

for test in tests
  require test

$ ->
  mocha.run()
