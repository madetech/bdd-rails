cd example
rails new --skip-test-unit $1
cd $1
echo "gem 'bdd-rails', path: '../../'" >> Gemfile
bundle
spring stop
bundle exec rails g bdd_rails:install
cd ..
rm -rf $1
cd ..
