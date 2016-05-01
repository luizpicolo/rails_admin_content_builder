module RailsAdminContentBuilder
  module ContentBuilderHelpers
    def content_created
      RailsAdminContentBuilder::ContentBuilder
    end

    def all_contents_created
      RailsAdminContentBuilder::ContentBuilder.all
    end

    def find_content_created_by_slug(slug)
      RailsAdminContentBuilder::ContentBuilder.find_by_slug(slug)
    end
  end
end
