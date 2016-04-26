# module RailsAdminContentBuilder
#   class ContentBuilder < ActiveRecord::Base
#     self.table_name = 'content_builder_relateds'
#
#     validates :title, :date_publish, presence: true
#     has_many :content_builder_images, inverse_of: :content_builder
#   end
# end
