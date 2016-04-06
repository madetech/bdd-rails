set -e

rm -rf test_app
bundle exec rails new --skip-test-unit test_app
cd test_app
echo "gem 'bdd-rails', path: '../'" >> Gemfile
bundle
spring stop
bundle exec rails g bdd_rails:install
