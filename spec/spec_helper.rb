ENV['RAILS_ENV'] ||= 'test'

require File.expand_path("../dummy/config/environment.rb", __FILE__)
require 'rspec/rails'
require 'faker'
require 'rails_admin/engine'
require 'rails_admin/config'
require 'shoulda-matchers'
require 'factory_girl_rails'
require "codeclimate-test-reporter"
require 'simplecov'

CodeClimate::TestReporter.start
SimpleCov.start

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.before(:suite) { FactoryGirl.reload }
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.include RailsAdmin::Engine.routes.url_helpers
  config.include RailsAdmin::Config
  config.order = "random"
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
