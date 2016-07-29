# Add ContentHelper in your Controller
#
#   class PostsController < ApplicationController
#     include RailsAdminContentBuilder::ContentBuilderHelpers
#
#     def index
#     end
#   end
module RailsAdminContentBuilder
  module ContentBuilderHelpers
    # Return content Object
    #
    #   @content = content_created
    def content_created
      RailsAdminContentBuilder::ContentBuilder
    end

    # Return all contents created
    #
    #   @content = all_contents_created
    def all_contents_created
      RailsAdminContentBuilder::ContentBuilder.where(status: true)
    end

    # Return specific contents created by slug
    #
    #   @content = find_content_created_by_slug('slug')
    def find_content_created_by_slug(slug)
      RailsAdminContentBuilder::ContentBuilder.where(status: true, slug: slug).first
    end
  end
end
