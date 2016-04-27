require 'spec_helper'

feature 'content builder' do
  scenario 'create' do
    visit rails_admin.new_path(model_name: 'rails_admin_content_builder~content_builder')

    fill_in('Title', :with => 'Aqui vai um nome')
    fill_in('Date publish', :with => 'April 25, 2016 15:48')

    click_button('Save')

    expect(page).to have_content('Content builder successfully created')
  end
end