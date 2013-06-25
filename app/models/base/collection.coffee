Model = require 'models/base/model'

module.exports = class Collection extends Chaplin.Collection
  # Use the project base model per default, not Chaplin.Model
  model: Model
