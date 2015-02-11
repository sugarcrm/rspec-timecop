require 'rspec/core'
require 'timecop'

module Rspec
  module Timecop
    module Helpers
      def timecopped(time, &block)
        result = nil
        ::Timecop.freeze(time) { result = yield }
        result
      end
    end
  end
end

RSpec.configure do |config|
  config.include(Rspec::Timecop::Helpers)
end
