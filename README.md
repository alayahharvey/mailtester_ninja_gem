# MailTester Ninja Gem

This gem provides a simple interface to the MailTester Ninja API an [Email verifier Website](https://mailtester.ninja/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mailtester-ninja'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install mailtester-ninja
```

## Usage

```ruby
require 'mailtester_ninja'

client = MailTesterNinja::Client.new("your_api_key")
result = client.validate_email("test@example.com")
puts result
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

## License

The gem is available as open source under the terms of the MIT License.
