# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/timecop/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-timecop'
  spec.version       = RSpec::Timecop::VERSION
  spec.authors       = ['Andrew Sullivan Cant']
  spec.email         = ['acant@sugarcrm.com']
  spec.summary       = 'RSpec extension to control time.'
  spec.description   = 'Provides helper methods for using Timecop in RSpec examples.'
  spec.homepage      = 'http://github.com/sugarcrm/rspec-timecop'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.1.2'

  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.add_dependency 'rspec-core', '>= 2.99.0'
  spec.add_dependency 'timecop',    '~> 0.8'

  spec.add_development_dependency 'rake',  '~> 13.2'
  spec.add_development_dependency 'rspec', '~> 3.0'

  # Dependencies whose APIs we do not really depend upon, and can be upgraded
  # without limiting.
  spec.add_development_dependency 'bundler-audit'
  spec.add_development_dependency 'license_finder'
  spec.add_development_dependency 'logger'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-rake'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'simplecov-lcov'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'yardstick'
end
