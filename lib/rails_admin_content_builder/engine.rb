require 'medium-editor-rails'
require 'simple_form'
require 'carrierwave'

module RailsAdminContentBuilder
  class Engine < ::Rails::Engine
    initializer 'rails_admin_content_builder.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
    end
  end
end
