module RailsAdminContentBuilder
  class ContentBuilder < ActiveRecord::Base
    extend FriendlyId
    self.table_name = 'content_builders'

    friendly_id :title, use: :slugged

    validates :title, :date_publish, presence: true
    has_many :content_builder_images, inverse_of: :content_builder

    def content_sanitized
      # sanitize(
      #   self.content,
      #   tags: %w(div p img figure figcaption),
      #   attributes: %w(src class)).html_safe
      self.content.html_safe
    end
  end
end
