set -e

cd test_app
export BUNDLE_GEMFILE=$PWD/Gemfile
bundle exec rails g bdd_rails:examples
bundle exec rspec spec/example_spec.rb
