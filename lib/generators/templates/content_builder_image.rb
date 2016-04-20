class ContentBuilderImage < ActiveRecord::Base
  mount_uploader :image, ContentBuilderImageUploader

  validates :image, presence: true
  belongs_to :content_builder, inverse_of: :content_builder_images
end
