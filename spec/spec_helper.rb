# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

# Setup code coverage
require 'simplecov'
SimpleCov.start

require 'rspec/timecop'
