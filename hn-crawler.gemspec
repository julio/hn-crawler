# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hn-crawler/version'

Gem::Specification.new do |gem|
  gem.name          = "hn-crawler"
  gem.version       = Hn::Crawler::VERSION
  gem.authors       = ["Julio Santos"]
  gem.email         = ["julio@morgane.com"]
  gem.description   = "Show top stories on hacker news"
  gem.summary       = "Show top stories on hacker news"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_runtime_dependency     'nokogiri'
end