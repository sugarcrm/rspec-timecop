# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)

# Setup code coverage
require 'simplecov'
require 'simplecov-lcov'
require 'simplecov_json_formatter'
SimpleCov.start do
  # NOTE: Include the lcov formatter for CodeClimate reporting.
  # Even though the simplecov JSON format will be output and used by default,
  # the test reporter does not handle it reliable.
  # Using the lcov formatter is more reliable.
  SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new(
    [
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::JSONFormatter,
      SimpleCov::Formatter::LcovFormatter
    ]
  )
end

require 'rspec/timecop'
