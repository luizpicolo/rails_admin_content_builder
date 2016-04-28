module RailsAdminContentBuilder
  class ContentBuilder < ActiveRecord::Base
    extend FriendlyId
    self.table_name = 'content_builders'

    friendly_id :title, use: :slugged

    validates :title, :date_publish, :written_by, :summary, presence: true
    has_many :content_builder_images, inverse_of: :content_builder

    def content_sanitized
      white_list_sanitizer = Rails::Html::WhiteListSanitizer.new
      white_list_sanitizer.sanitize(
        self.content,
        tags: %w(div p img figure figcaption a),
        attributes: %w(src class alt href)).html_safe
    end
  end
end
