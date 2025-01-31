# RSpec::Timecop

[![Gem Version](https://badge.fury.io/rb/rspec-timecop.svg)](http://badge.fury.io/rb/rspec-timecop)
[![Build Status](https://github.com/sugarcrm/rspec-timecop/actions/workflows/ci.yml/badge.svg)](https://github.com/sugarcrm/rspec-timecop/actions/workflows/ci.yml)
[![Code Climate](https://codeclimate.com/github/sugarcrm/rspec-timecop/badges/gpa.svg)](https://codeclimate.com/github/sugarcrm/rspec-timecop)
[![Test Coverage](https://codeclimate.com/github/sugarcrm/rspec-timecop/badges/coverage.svg)](https://codeclimate.com/github/sugarcrm/rspec-timecop/coverage)
[![License](http://img.shields.io/badge/license-MIT-green.svg?style=flat)](LICENSE.txt)

[![RubyDoc](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://rubydoc.org/gems/rspec-timecop)
[![CucumberReports: rspec-timecop](https://messages.cucumber.io/api/report-collections/90896a4c-93cc-47e8-9e26-12d0df876651/badge)](https://reports.cucumber.io/report-collections/90896a4c-93cc-47e8-9e26-12d0df876651)

RSpec extension for controlling time within examples, using the [timecop gem](https://github.com/travisjeffery/timecop).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-timecop'
```

And then execute:

    $ bundle install

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

## Elsewhere on the web

Links to other places on the web where this projects exists:

* [Code Climate](https://codeclimate.com/github/sugarcrm/rspec-timecop)
* [CucumberReports](https://reports.cucumber.io/report-collections/90896a4c-93cc-47e8-9e26-12d0df876651)
* [Github](https://github.com/sugarcrm/rspec-timecop)
* [OpenHub](https://www.openhub.net/p/rspec-timecop)
* [RubyDoc](https://rubydoc.org/gems/rspec-timecop)
* [RubyGems](https://rubygems.org/gems/rspec-timecop)
* [Ruby LibHunt](https://ruby.libhunt.com/rspec-timecop-alternatives)
* [Ruby Toolbox](https://www.ruby-toolbox.com/projects/rspec-timecop)

## Similar Projects

* [timecop-rspec](https://github.com/avantoss/timecop-rspec), similar ideas but
  a different implementation

## Contributing

1. Fork it ( https://github.com/sugarcrm/rspec-timecop/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Copyright 2025 [SugarCRM Inc.](http://sugarcrm.com), released under the [MIT License](https://opensource.org/license/MIT).
