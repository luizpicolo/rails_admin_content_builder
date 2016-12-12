module RailsAdminContentBuilder
  class ContentBuilderCategory < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    self.table_name = 'content_builder_categories'

    validates :name, presence: true

    has_many :content_builders, inverse_of: :content_builder_category
  end
end
