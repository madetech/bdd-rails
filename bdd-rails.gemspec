lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bdd_rails/version'

Gem::Specification.new do |spec|
  spec.name  = 'bdd-rails'
  spec.version = BddRails::VERSION
  spec.authors = ['Luke Morton']
  spec.email = ['luke@madetech.com']

  spec.summary = %q{A starter kit for testing BDD in rails}
  spec.homepage = 'https://github.com/madetech/bdd-rails'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0")
  spec.require_paths = ['lib']

  spec.add_dependency 'rails'
  spec.add_dependency 'bundler'

  spec.add_development_dependency 'rake'
end
