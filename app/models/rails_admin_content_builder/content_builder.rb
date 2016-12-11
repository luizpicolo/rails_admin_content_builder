module RailsAdminContentBuilder
  class ContentBuilder < ApplicationRecord
    include SearchCop
    extend FriendlyId

    self.table_name = 'content_builders'

    friendly_id :title, use: :slugged

    validates :title, :date_publish, :content_builder_category,
              :written_by, presence: true

    has_many :content_builder_images, inverse_of: :content_builder,
                                      dependent: :destroy
    belongs_to :content_builder_category, inverse_of: :content_builders

    search_scope :search do
      attributes :title
    end

    def content_sanitized
      white_list_sanitizer = Rails::Html::WhiteListSanitizer.new
      white_list_sanitizer.sanitize(
        content,
        tags: tags_hash,
        attributes: attributes_hash
      ).try(:html_safe)
    end

    def tags_hash
      %w(
        div b i a u p img figure figcaption a iframe footer aside
        section blockquote ul ol li h1 h2 h3 h4 h5 h6
      )
    end

    def attributes_hash
      %w(
        src class alt href allowfullscreen frameborder height width
      )
    end
  end
end
