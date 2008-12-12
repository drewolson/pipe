# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pipe}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Drew Olson"]
  s.date = %q{2008-12-12}
  s.description = %q{Pipe lets you aggregate a bunch of RSS feeds based on filters. Tell pipe the url of the feed, and then give it a hash of xml tag names plus patterns those tags must fit. Use with sinatra, easy as pie.}
  s.email = ["olsonas@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/pipe.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/drewolson/pipe}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{pipe}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Pipe lets you aggregate a bunch of RSS feeds based on filters}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hpricot>, [">= 0.6.164"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<hpricot>, [">= 0.6.164"])
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<hpricot>, [">= 0.6.164"])
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
