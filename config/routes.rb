Rails.application.routes.draw do
  put 'admin/content_builder/:id/create_images' => 'rails_admin_content_builder/content_builder#create_images'
end