# Brunch with Chaplin
Brunch with Chaplin is a fork of [Chaplin](https://github.com/moviepilot/chaplin) that is bundled to one file for usage with [Brunch](http://brunch.io).

Requires Brunch 1.1+.

## Getting started
Just copy `public/chaplin.js` to your `vendor/scripts` directory.

To use Chaplin classes, you'll need to do `require 'chaplin/CLASS_NAME'`, e.g., `ChaplinView = require 'chaplin/views/view'`.

Example application built with the lib: [Tweet your brunch](https://github.com/brunch/twitter).

See [Chaplin github page](https://github.com/moviepilot/chaplin) for
documentation.

## Features
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

## Other
Versions of software the skeleton uses:

* Chaplin [610a5cc58925a6bd2dd69d5542bd094a0dc74198](https://github.com/moviepilot/chaplin/commit/610a5cc58925a6bd2dd69d5542bd094a0dc74198)

## License
The MIT license.

Copyright (c) Paul Miller (http://paulmillr.com/)

Copyright (c) 2012 Moviepilot GmbH, 9elements GmbH et al.

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
