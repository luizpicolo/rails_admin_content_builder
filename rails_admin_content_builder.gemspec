# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rails_admin_content_builder/version"

Gem::Specification.new do |spec|
  spec.name         = "rails_admin_content_builder"
  spec.version      = RailsAdminContentBuilder::VERSION
  spec.authors      = ["Luiz Picolo", "Gabriel Medina"]
  spec.email        = ["luizpicolo@gmail.com", "gmedina.santos@gmail.com"]

  spec.summary      = "System News rails_admin"
  spec.description  = "System News rails_admin"
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
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "shoulda-matchers", "~> 3.1"
  spec.add_development_dependency "factory_girl_rails"
  spec.add_development_dependency "faker", "~> 1.6.3"

  spec.add_dependency "carrierwave", "~> 0.11.0"
  spec.add_dependency "medium-editor-rails", "~> 2.1.0"
  spec.add_dependency "mini_magick", "~> 4.5.1"
  spec.add_dependency "simple_form", "~> 3.2"
end
