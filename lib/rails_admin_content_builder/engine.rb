require 'medium-editor-rails'
require 'simple_form'
require 'carrierwave'

module RailsAdminContentBuilder
  class Engine < ::Rails::Engine
    isolate_namespace RailsAdminContentBuilder

    initializer 'rails_admin_content_builder.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
    end

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
