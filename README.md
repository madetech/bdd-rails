# BDD Rails: A starter kit

Hello there! So you think BDD is a great way to talk about software? Are you
ready to codify some of those conversations? Do you build apps in rails? If
so you've come to the right place.

`bdd-rails` was built to provide a set of generators for a rails app. We provide
an opinionated setup for using rspec + capybara to feature test your
application.

## BDD starts with conversations

Many think BDD is about a certain testing style, it is and it isn't. BDD is much
more about the conversations around the desired and undesired behaviour of a
system.

If you're not having conversations about your system in a BDD style then that
is where you should start!

## Codifying Behaviour

Coming soon...

## Creating a new rails app

Run the following commands to get started :)

```
gem install rails
rails new --skip-test-unit my_bdd_app
cd my_bdd_app
echo "gem 'bdd-rails', path: '../../'" >> Gemfile
bundle
bundle exec rails g bdd_rails:install
```
