Model = require './model'

module.exports = class Navigation extends Model
  defaults:
    items: [
      {href: 'http://brunch.readthedocs.org/', title: 'Documentation'},
      {href: 'https://github.com/brunch/brunch/issues', title: 'Github Issues'},
      {href: 'https://github.com/brunch/twitter', title: 'Twitter Example App'},
      {href: 'https://github.com/brunch/todos', title: 'Todos Example App'}
    ]
