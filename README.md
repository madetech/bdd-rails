# BDD Rails: A starter kit

[![Gem Version](https://badge.fury.io/rb/bdd-rails.svg)](https://badge.fury.io/rb/bdd-rails)
[![Build Status](https://travis-ci.org/madetech/bdd-rails.svg?branch=master)](https://travis-ci.org/madetech/bdd-rails)

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

Coming soon... for now read the following articles to find out about the style
of tests we're writing:

 - http://lukemorton.co.uk/thoughts/2016-01-09-feature-testing-in-2016
 - https://about.futurelearn.com/blog/how-we-write-readable-feature-tests-with-rspec/
 - https://www.madetech.com/blog/feature-testing-with-rspec

### Creating a new rails app

Firstly, make sure you have rails installed!

```
gem install rails
```

Now let's create a new app!

```
rails new --skip-test-unit my_bdd_app
cd my_bdd_app
```

Next we want to install `bdd-rails`:

```
echo "gem 'bdd-rails', path: '../../'" >> Gemfile
bundle
```

And finally we want to install our BDD setup in your rails app:

```
bundle exec rails g bdd_rails:install
```

Now you can run your (empty) test suite:

```
bundle exec rspec
```
