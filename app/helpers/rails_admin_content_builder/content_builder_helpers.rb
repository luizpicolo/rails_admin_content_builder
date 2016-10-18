# Add ContentHelper in your Controller
#
#   class PostsController < ApplicationController
#     include RailsAdminContentBuilder::ContentBuilderHelpers
#
#     def index
#     end
#   end
module RailsAdminContentBuilder
  # This is a Module
  module ContentBuilderHelpers
    # Return content Object
    #
    #   @content = content_created
    def content_created
      set_content_builder
    end

    # Return all contents created
    #
    #   @content = all_contents_created
    def all_contents_created
      set_content_builder.where(status: true)
    end

    # Return specific contents created by slug
    #
    #   @content = find_content_created_by_slug('slug')
    def find_content_created_by_slug(slug)
      set_content_builder.where(status: true, slug: slug).first
    end

    # Return object RailsAdminContentBuilder::ContentBuilder
    def set_content_builder
      RailsAdminContentBuilder::ContentBuilder
    end
  end
end
