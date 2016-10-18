require 'spec_helper'

feature 'change status content builder', type: :feature do
  before(:each) do
    @model_name = 'rails_admin_content_builder~content_builder'
  end

  scenario 'publish', js: false do
    content = FactoryGirl.create(:content_builder)
    visit rails_admin.content_builder_path(
      model_name: @model_name, id: content.id
    )

    click_button('Publish')

    expect(page).to have_content('Successfully updated')
    expect(page).to have_selector("input[type=submit][name='unpublish']")
  end

  scenario 'unpublish', js: false do
    content = FactoryGirl.create(:content_builder, status: true)
    visit rails_admin.content_builder_path(
      model_name: @model_name, id: content.id
    )

    click_button('Unpublish')

    expect(page).to have_content('Successfully updated')
    expect(page).to have_selector("input[type=submit][name='publish']")
  end
end
