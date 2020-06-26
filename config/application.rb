require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module FindYourRecipe
  class Application < Rails::Application
    config.load_defaults 6.0

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end
    config.eager_load_paths << Rails.root.join('lib')

    config.autoload_paths << Rails.root.join('lib')
  end
end
