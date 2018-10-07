# Omniauth::Paloma

A custom OmniAuth strategy for authenticating against Paloma.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-paloma'
```

And then execute:

    $ bundle

## Usage

See [OmniAuth example](https://github.com/plataformatec/devise/wiki/OmniAuth%3A-Overview) for usage instructions.

The `config/initializers/devise.rb` should look something like this:

```
config.omniauth :paloma, ENV['PALOMA_CLIENT_ID'], ENV['PALOMA_SECRET_KEY'], scope: 'ekdb', client_options: { redirect_uri: "http://bauwerk.myechoo.io/users/auth/paloma/callback" }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lenart/omniauth-paloma.
