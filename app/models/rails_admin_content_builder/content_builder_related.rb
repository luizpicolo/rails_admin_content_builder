module RailsAdminContentBuilder
  class ContentBuilderRelated < ActiveRecord::Base
    self.table_name = 'content_builder_relateds'

    # validates :title, :date_publish, presence: true
    belongs_to :content_builder, inverse_of: :content_builder_relateds
  end
end
