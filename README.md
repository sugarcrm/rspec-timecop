# RSpec::Timecop

RSpec extension for controlling time within examples.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-timecop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-timecop

## Usage

In a RSpec example you can use the timecopped method to freeze time for the
subject of the example:

```
class Foobar
  def self.hi
    OtherObject.time_check(Time.now)
    'hi'
  end
end

describe Foobar do
  let(:now) { Time.now }
  before do
    expect(OtherObject).to receive(:time_check)
      .with(now)
  end

  describe 'without the helper' do
    subject do
      result = nil
      Timecop.freeze(now) { result = Foobar.hi }
      result
    end
    it { should eq('hi') }
  end

  describe 'with the helper' do
    subject { timecopped(now) { Foobar.hi } }
    it { should eq('hi') }
  end
end
```

Without Timecop.freeze the value for Time.now being passed into ObjectOther#time_check could not be consistently checked.
And using #timecopped hides away example how Timecop.freeze is used so that we can see the subject call more clearly.

## Related
* https://github.com/travisjeffery/timecop/pull/119

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rspec-timecop/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
