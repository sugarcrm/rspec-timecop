# -*- encoding: utf-8 -*-
module RSpec
  module Timecop
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
