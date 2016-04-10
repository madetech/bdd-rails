require 'rails/railtie'

module BddRails
  class Rails
    class Railtie < ::Rails::Railtie
      generators do
        require 'bdd_rails/install_generator'
        require 'bdd_rails/example_generator'
      end
    end
  end
end
