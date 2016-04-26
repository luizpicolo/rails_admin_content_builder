module RailsAdminContentBuilder
  class ContentBuilderImage < ActiveRecord::Base
    self.table_name = 'content_builder_images'

    mount_uploader :image, ContentBuilderImageUploader

    validates :image, presence: true
    belongs_to :content_builder, inverse_of: :content_builder_images
  end
end
