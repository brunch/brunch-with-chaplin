exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  files:
    javascripts:
      joinTo:
        'build.js': /^(app|vendor)/
        'test/tests.js': /^test/
      order:
        # Files in `vendor` directories are compiled before other files
        # even if they aren't specified in order.before.
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.8.3.js',
          'vendor/scripts/underscore-1.4.3.js',
          'vendor/scripts/backbone-0.9.9.js'
        ]
        after: [
          'test/vendor/scripts/test-helper.js'
        ]

    stylesheets:
      joinTo:
        'build.css': /^(app|vendor)/
        'test/tests.css': /^test/
      order:
        before: ['vendor/styles/normalize-2.0.1.css']
        after: ['vendor/styles/helpers.css']

    templates:
      joinTo: 'build.js'
