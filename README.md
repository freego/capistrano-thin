# Capistrano::Thin

Simple Thin specific tasks for Capistrano 3.x, implements the following tasks:

```
thin:restart
thin:start
thin:stop
```

## Configuration

A valid Thin config file is expected under
`config/thin/(production|staging|whatever).yml`.
but you can also specify custom config file using `set` e.g.

```ruby
set :thin_config_path, -> { "#{shared_path}/config/thin.yml" }
```

By default, thin will be executed with :app role. But you can assign it to a different role:

```ruby
set :thin_roles, [:my_role]
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-thin', '~> 2.0.0'
```

If you use RVM on the server also add the `capistrano-rvm` gem.

And then execute:

    $ bundle

## Usage

Require in `Capfile` to load tasks:

```ruby
require 'capistrano/thin'
```

And use tasks on `deploy.rb`, e.g.

```ruby
after 'deploy:publishing', 'thin:restart'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
