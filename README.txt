= pipe

* http://github.com/drewolson/pipe

== DESCRIPTION:

Pipe lets you aggregate a bunch of RSS feeds based on filters. Tell
pipe the url of the feed, and then give it a hash of xml tag names
plus patterns those tags must fit. Use with sinatra, easy as pie.

== FEATURES/PROBLEMS:

* Create an aggregate RSS feed with filters

== SYNOPSIS:

 Make a new file called ruby_pipe.rb:

  require 'rubygems'
  require 'pipe'
  require 'sinatra'

  get '/' do
    Pipe.create do
      feed "http://news.ycombinator.com/rss", :title => /ruby/i
      feed "http://reddit.com/r/ruby/.rss"
    end
  end

 Now fire up your new pipe:

  ruby ruby_pipe.rb

 Now enjoy some RSS goodness personally tailored to you at
 http://localhost:4567

== REQUIREMENTS:

* pipe

== INSTALL:

* gem source -a http://gems.github.com
* sudo gem install drewolson-pipe

== LICENSE:

(The MIT License)

Copyright (c) 2008 FIX

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
