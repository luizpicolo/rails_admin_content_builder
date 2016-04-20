
module RailsAdminContentBuilder
  class ContentBuilderController < ::ApplicationController
    def create_images
      @content_builder = ContentBuilder.find(params[:id])
      @image = @content_builder.content_builder_images.create(image: params[:content_builder_image])
      if @image
        render json: find_image(@image.id)
      else
        render json: @image.errors
      end
    end

    private

    def find_image(id)
      ContentBuilderImage.find(id).image.to_json
    end
  end
end
