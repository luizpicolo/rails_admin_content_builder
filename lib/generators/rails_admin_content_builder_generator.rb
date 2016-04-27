require 'rails/generators'

class RailsAdminContentBuilderGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates/'))
  end

  def self.next_migration_number(dirname)
    unless @migration
      @migration = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
    else
      @migration += 1
    end
    @migration.to_s
  end

  def create_uploader_content_builder_image_model
    template "content_builder_image_uploader.rb", "app/uploaders/content_builder_image_uploader.rb"
  end

  def create_migrations
    migration_template "create_content_builder_migration.rb", File.join('db/migrate', "create_content_builders.rb")
    migration_template "create_content_builder_image_migration.rb", File.join('db/migrate', "create_content_builder_images.rb")
  end
end


