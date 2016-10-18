require 'medium-editor-rails'
require 'simple_form'
require 'carrierwave'
require 'friendly_id'
require 'search_cop'

module RailsAdminContentBuilder
  class Engine < ::Rails::Engine
    isolate_namespace RailsAdminContentBuilder

    initializer 'rails_admin_content_builder.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
      app.config.assets.precompile += %w(
        rails_admin/content_builder.js
        rails_admin/content_builder.css
      )
    end

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.assets false
      g.helper false
    end
  end
end
