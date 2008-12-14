require 'open-uri'
require 'rubygems'
require 'hpricot'

class Pipe
  VERSION = '0.1.2'
  HEADER = %q{<?xml version="1.0" encoding="UTF-8"?><rss version="2.0"><channel>}
  FOOTER = %q{</channel></rss>}

  attr_reader :content

  def self.create(&block)
    pipe = Pipe.new
    
    if block.arity.zero?
      pipe.instance_eval(&block)
    else
      block.call(pipe)
    end

    HEADER + pipe.content + FOOTER
  end

  def initialize
    @content = ""
  end

  def feed(url,filters={})
    enum = (filters[:combine_with] == :and ? :all? : :any?)
    filters.delete(:combine_with)

    doc = Hpricot.XML(open(url))

    @content += (doc/:item).select do |item|
      filters.send(enum) { |field,pattern| (item/field).to_s =~ pattern }
    end.to_s
  end
end

