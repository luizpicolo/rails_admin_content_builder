# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_admin_content_builder/version"

Gem::Specification.new do |spec|
  spec.name         = "rails_admin_content_builder"
  spec.version      = RailsAdminContentBuilder::VERSION
  spec.authors      = ["Luiz Picolo", "Gabriel Medina"]
  spec.email        = ["luizpicolo@gmail.com", "gmedina.santos@gmail.com"]

  spec.summary      = "Easy way for create contents using rails_admin"
  spec.description  = "Easy way for create contents using rails_admin"
  spec.homepage     = "http://github.com/luizpicolo/rails_admin_content_builder"
  spec.license      = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.test_files = Dir["spec/**/*"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rails", [">= 4.0", "< 5"]
  spec.add_development_dependency "rspec-rails", "~> 3.0"
  spec.add_development_dependency "rails_admin", "~> 0.8.1"
  spec.add_development_dependency 'capybara', '~> 2.7', '>= 2.7.0'
  spec.add_development_dependency 'launchy', '~> 2.4', '>= 2.4.3'
  spec.add_development_dependency "shoulda-matchers", "~> 3.1"
  spec.add_development_dependency 'selenium-webdriver', '~> 2.53', '>= 2.53.4'
  spec.add_development_dependency 'factory_girl_rails', '~> 4.7', '>= 4.7.0'
  spec.add_development_dependency 'faker', '~> 1.6', '>= 1.6.3'

  spec.add_runtime_dependency "carrierwave", "~> 0.11.0"
  spec.add_runtime_dependency 'medium-editor-rails', '~> 2.1', '>= 2.1.0'
  spec.add_runtime_dependency 'mini_magick', '~> 4.5', '>= 4.5.1'
  spec.add_runtime_dependency 'friendly_id', '~> 5.1', '>= 5.1.0'
  spec.add_runtime_dependency "simple_form", "~> 3.2"
  spec.add_runtime_dependency 'search_cop', '~> 1.0', '>= 1.0.6'
  spec.add_runtime_dependency 'rails-html-sanitizer', '~> 1.0', '>= 1.0.0'
end
