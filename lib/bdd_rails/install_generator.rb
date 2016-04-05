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
        gem 'vcr'
      end

      bundle_command :install
    end

    private

    def bundle_command(command)
      say_status :run, "bundle #{command}"

      # We are going to shell out rather than invoking Bundler::CLI.new(command)
      # because `rails new` loads the Thor gem and on the other hand bundler uses
      # its own vendored Thor, which could be a different version. Running both
      # things in the same process is a recipe for a night with paracetamol.
      #
      # We unset temporary bundler variables to load proper bundler and Gemfile.
      #
      # Thanks to James Tucker for the Gem tricks involved in this call.
      _bundle_command = Gem.bin_path('bundler', 'bundle')

      require 'bundler'
      Bundler.with_clean_env do
        full_command = %Q["#{Gem.ruby}" "#{_bundle_command}" #{command}]
        if options[:quiet]
          system(full_command, out: File::NULL)
        else
          system(full_command)
        end
      end
    end
  end
end
