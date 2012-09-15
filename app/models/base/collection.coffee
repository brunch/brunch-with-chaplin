Chaplin = require 'chaplin'

module.exports = class Collection extends Chaplin.Collection
  # Mixin a synchronization state machine
  # _(@prototype).extend SyncMachine
