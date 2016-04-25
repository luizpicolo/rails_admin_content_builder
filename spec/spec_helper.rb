ENV["RAILS_ENV"] = "test"

require 'rails'
require 'action_controller'
require 'action_controller/base'
require 'action_controller/test_case'
require 'rspec/rails'
require 'rails_admin_content_builder'

class ApplicationController < ActionController::Base; end

require_relative '../app/controllers/rails_admin_content_builder/content_builder_controller'

RSpec.configure do |config|
end
