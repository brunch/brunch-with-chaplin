# Load all tests.
for module in window.require.list() when /-test$/.test module
  require module
