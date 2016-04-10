module BddRails
  class ExampleGenerator < ::Rails::Generators::Base
    source_root File.expand_path('../templates/example', __FILE__)

    def install_example_code
      directory 'app'
    end

    def install_route
      route 'resources :newsletter_subscriptions, only: [:new, :create]'
    end

    def install_example_spec
      directory 'spec'
    end
  end
end
