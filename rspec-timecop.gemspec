# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/timecop/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-timecop'
  spec.version       = Rspec::Timecop::VERSION
  spec.authors       = ['Andrew Sullivan Cant']
  spec.email         = ['acant@sugarcrm.com']
  spec.summary       = %q{RSpec extension to control time.}
  spec.description   = %q{Provides helper methods for using Timecop in RSpec examples.}
  spec.homepage      = 'http://github.com/sugarcrm/rspec-timecop'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency     'rspec-core', '>= 2.99.0'
  spec.add_runtime_dependency     'timecop',    '~> 0.7.1'
  spec.add_runtime_dependency     'rubocop',    '~> 0.29.0'
  spec.add_development_dependency 'bundler',    '~> 1.7'
  spec.add_development_dependency 'rake',       '~> 10.0'
  spec.add_development_dependency 'rspec',      '~> 2.99.0'
end
