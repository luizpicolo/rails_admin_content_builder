Rails.application.routes.draw do
  path_url = 'admin/rails_admin_content_builder~content_builder/:id/create_images'
  path_method = 'rails_admin_content_builder/content_builder#create_images'
  put path_url => path_method
end