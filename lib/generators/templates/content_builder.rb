class ContentBuilder < ActiveRecord::Base
  validates :title, :date_publish, presence: true
  has_many :content_builder_images, inverse_of: :content_builder
end
