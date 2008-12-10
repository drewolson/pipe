require 'open-uri'
require 'rubygems'
require 'hpricot'

class Pipe
  VERSION = '0.1.0'
  HEADER = %q{<?xml version="1.0" encoding="UTF-8"?><rss version="2.0"><channel>}
  FOOTER = %q{</channel></rss>}

  attr_reader :content

  def self.create(&block)
    pipe = Pipe.new
    pipe.instance_eval(&block)
    HEADER + pipe.content + FOOTER
  end

  def initialize
    @content = ""
  end

  def feed(url,filters={})
    doc = Hpricot.XML(open(url))

    @content += (doc/:item).select do |item|
      filters.all? { |field,pattern| (item/field).to_s =~ pattern }
    end.to_s
  end
end

