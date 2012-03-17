Model = require 'models/model'

module.exports = class Navigation extends Model
  defaults:
    items: [
      {href: '/', title: 'Likes Browser'}
      {href: '/posts', title: 'Wall Posts'}
    ]
