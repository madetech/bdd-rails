set -e

cd test_app
export BUNDLE_GEMFILE=$PWD/Gemfile
bundle exec rails g bdd_rails:example
bundle exec rspec spec/features/newsletter_spec.rb
