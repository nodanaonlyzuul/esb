# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'esb/version'

Gem::Specification.new do |gem|
  gem.name          = "esb"
  gem.version       = Esb::VERSION
  gem.authors       = ["nodanaonlyzuul"]
  gem.email         = ["beholdthepanda@gmail.com"]
  gem.summary       = %q{A command line tool to tell you what color the empire state building is, and why.}
  gem.homepage      = "https://github.com/nodanaonlyzuul/esb"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('nokogiri')
  gem.add_development_dependency('pry')
end
