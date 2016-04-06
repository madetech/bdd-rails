# Fairly ironic this isn't a BDD feature test isn't it?
#
# Life's too short :)
#
set -e

rm -rf test_app
bundle exec rails new --skip-test-unit test_app
cd test_app
echo "gem 'bdd-rails', path: '../'" >> Gemfile
bundle
bundle exec rails g bdd_rails:install
bundle exec rake db:migrate
bundle exec rspec
