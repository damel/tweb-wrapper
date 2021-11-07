# TwebWrapper

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/tweb_wrapper`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "tweb_wrapper", path: "./tweb_wrapper"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install tweb_wrapper

## Usage

bin/console

res = client.connection.get("accounts/#{client.username}/status", {}, { "x-app-key": client.api_key })
