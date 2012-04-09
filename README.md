# Brunch with Chaplin
Brunch with Chaplin is a skeleton for [Brunch](http://brunch.io)
that uses [Chaplin](https://github.com/moviepilot/chaplin) structure.

Requires Brunch 1.x.

## Features
* HTML5Boilerplate 3.0 html & Bootstrap 2.0 css are included.
* CoffeeScript + Stylus + Handlebars as app languages
* Backbone as main framework
* Cross-module communication using the Mediator and Publish/Subscribe patterns
* Controllers for managing individual UI views
* Rails-style routes which map URLs to controller actions
* An application view as dispatcher and view manager
* Extended model, view and collection classes to avoid repetition and
enforce conventions
* Strict memory management and object disposal
* A collection with additional manipulation methods for smarter change events
* A collection view for easy and intelligent list rendering
* Client-side authentication using service providers like Facebook, Google
and Twitter
* Easy debugging: just uncomment `#console.debug` in all files.

## Getting started
If you're using Brunch 1.0.x:

* Clone or download the project.
* Create new project via executing `brunch new --template <PATH TO THE PROJECT>`

Edit `app/lib/services/facebook.coffee` and change `facebookAppId` to your ID. 
Note that if you'll use predefined `facebookAppId`, you'll need to use
`http://localhost` domain.

See [Chaplin github page](https://github.com/moviepilot/chaplin) for
documentation.

## Other
Versions of software the skeleton uses:

* Chaplin [a21c7a937b4ce430e57805a530ae4634cebd53a0](https://github.com/moviepilot/chaplin/commit/a21c7a937b4ce430e57805a530ae4634cebd53a0)
* jQuery 1.7.2
* Backbone 0.9.1
* Underscore 1.3.1
* HTML5Boilerplate 3.0.3

## License
The MIT license.

Copyright (c) Paul Miller (http://paulmillr.com/)
Copyright (C) 2012 Moviepilot GmbH, 9elements GmbH et al.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
