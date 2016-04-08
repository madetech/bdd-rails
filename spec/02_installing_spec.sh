# Fairly ironic this isn't a BDD feature test isn't it?
#
# Life's too short :)
#
set -e

cd test_app
export BUNDLE_GEMFILE=$PWD/Gemfile
echo "gem 'bdd-rails', path: '../'" >> Gemfile
bundle
bundle show spring && bundle exec spring stop
bundle exec rails g bdd_rails:install
bundle exec rake db:migrate
bundle exec rspec
