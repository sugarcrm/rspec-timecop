# frozen_string_literal: true

module RSpec
  module Timecop
    # Helper which will be include by default, and provide the `timecopped`
    # help in all examples.
    module Helpers
      def timecopped(time)
        result = nil
        ::Timecop.freeze(time) { result = yield }
        result
      end
    end
  end
end

RSpec.configure do |config|
  config.include(RSpec::Timecop::Helpers)
end
