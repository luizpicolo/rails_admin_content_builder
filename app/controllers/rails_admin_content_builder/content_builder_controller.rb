module RailsAdminContentBuilder
  # This class
  class ContentBuilderController < ::ApplicationController
    def search_content
      content_builder = RailsAdminContentBuilder::ContentBuilder
      @content_builder = content_builder.order('date_publish desc')
                                        .limit(10)
                                        .search(params[:term])
      if @content_builder
        hash = 'include: {content_builder_category: {only: [:name, :slug]}}'
        render json: @content_builder.to_json(hash)
      else
        render json: @content_builder.errors
      end
    end

    def create_images
      @content_builder = ContentBuilder.find(params[:id])
      @image = @content_builder.content_builder_images
                               .create(image: params[:content_builder_image])
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
