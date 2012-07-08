Model = require 'models/base/model'

module.exports = class Header extends Model
  defaults:
    items: [
      {href: 'http://brunch.readthedocs.org/', title: 'Documentation'},
      {href: 'https://github.com/brunch/brunch/issues', title: 'Github Issues'},
      {href: 'https://github.com/paulmillr/ostio', title: 'Ost.io Example App'},
    ]
