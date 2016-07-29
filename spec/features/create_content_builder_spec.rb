require 'spec_helper'

feature 'create content builder', :type => :feature do

  before(:each) do
    @model_name = 'rails_admin_content_builder~content_builder'
  end

  scenario 'first step', js: false do
    category = FactoryGirl.create(:content_builder_category)
    visit rails_admin.new_path(model_name: @model_name)

    fill_in('Title', with: Faker::Lorem.characters)
    fill_in('Date publish', with: 'April 25, 2016 15:48')
    fill_in('Written by', with: Faker::Internet.url)
    select(category.name, :from => 'Content builder category')

    click_button('Save')

    expect(page).to have_content('Content builder successfully created')
  end

  scenario 'second step', js: false do
    content = FactoryGirl.create(:content_builder)
    visit rails_admin.content_builder_path(model_name: @model_name, id: content.id)

    # find('a[href="#"][data-snippet="1"]').click
    # find('img[alt="Snippet text"]').click

    click_button('Save')

    expect(page).to have_content('Successfully updated')
  end
end
