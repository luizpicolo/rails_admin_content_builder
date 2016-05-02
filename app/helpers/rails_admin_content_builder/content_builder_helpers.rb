module RailsAdminContentBuilder
  module ContentBuilderHelpers
    def content_created
      RailsAdminContentBuilder::ContentBuilder
    end

    def all_contents_created
      RailsAdminContentBuilder::ContentBuilder.where(status: true)
    end

    def find_content_created_by_slug(slug)
      RailsAdminContentBuilder::ContentBuilder.where(status: true, slug: slug).first
    end
  end
end
