module RailsAdminContentBuilder
  class ContentBuilder < ActiveRecord::Base
    extend FriendlyId
    self.table_name = 'content_builders'

    friendly_id :title, use: :slugged

    validates :title, :date_publish, presence: true
    has_many :content_builder_images, inverse_of: :content_builder
    has_many :content_builder_relateds, inverse_of: :content_builder
  end
end
