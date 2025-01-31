# frozen_string_literal: true

require 'spec_helper'

describe RSpec::Timecop::Helpers do
  describe '#timecopped' do
    subject { timecopped(now) { Time.now } }

    let(:now) { Time.parse('2015-01-01') }

    it { is_expected.to eq(now) }
  end
end
