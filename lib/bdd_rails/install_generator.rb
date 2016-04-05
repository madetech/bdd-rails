module BddRails
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def install_spec_directory
      directory 'spec'
    end

    def add_dot_rspec
      copy_file '.rspec'
    end

    def add_gems
      gem_group :test do
        gem 'capybara'
        gem 'database_cleaner'
        gem 'factory_girl'
        gem 'ffaker'
        gem 'rspec-its'
        gem 'rspec-rails'
      end

      run 'bundle'
    end
  end
end
