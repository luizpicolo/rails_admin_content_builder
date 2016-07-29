require 'spec_helper'

feature 'create content builder category', :type => :feature do

  before(:each) do
    @model_name = 'rails_admin_content_builder~content_builder_category'
  end

  scenario 'first step', js: false do
    visit rails_admin.new_path(model_name: @model_name)

    fill_in('Name', with: Faker::Lorem.characters)

    click_button('Save')

    expect(page).to have_content('Content builder category successfully created')
  end
end
