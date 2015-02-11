require 'rspec/timecop'

describe Rspec::Timecop::Helpers do
  describe '#timecopped' do
    subject { timecopped(now) { Time.now } }

    let(:now) { Time.parse('2015-01-01') }

    it { should eq(now) }
  end
end
