Rails.application.routes.draw do
  get_url = 'admin/rails_admin_content_builder~content_builder/search_content'
  get_method = 'rails_admin_content_builder/content_builder#search_content'
  get get_url => get_method

  put_url = 'admin/rails_admin_content_builder~content_builder/:id/create_images'
  put_method = 'rails_admin_content_builder/content_builder#create_images'
  put put_url => put_method
end
