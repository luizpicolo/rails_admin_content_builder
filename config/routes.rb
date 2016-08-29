Rails.application.routes.draw do
  get_path_url = 'admin/rails_admin_content_builder~content_builder/:id/search_content'
  get_path_method = 'rails_admin_content_builder/content_builder#search_content'
  get get_path_url => get_path_method

  put_path_url = 'admin/rails_admin_content_builder~content_builder/:id/create_images'
  put_path_method = 'rails_admin_content_builder/content_builder#create_images'
  put put_path_url => put_path_method
end
