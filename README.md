# Capistrano::Thin

Simple Thin specific tasks for Capistrano 3.x, implements the following tasks:

```
deploy:restart
deploy:start
deploy:stop
```

Note: A valid Thin config file is expected under
`config/thin/(production|staging|whatever).yml`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-thin', '~> 1.1.0'
```

If you use RVM on the server you should also add:

```ruby
gem 'capistrano-rvm'
```

And then execute:

    $ bundle

## Usage

Require in `Capfile` to load tasks:

```ruby
require 'capistrano/thin'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
