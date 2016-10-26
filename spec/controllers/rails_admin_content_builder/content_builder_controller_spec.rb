require 'spec_helper'
require 'json'

content_builder_controller = RailsAdminContentBuilder::ContentBuilderController

describe content_builder_controller, type: :controller do
  describe 'PUT #create_images' do
    it 'returns valid JSON' do
      content_builder = FactoryGirl.create :content_builder
      put :create_images, id: content_builder.id,
                          content_builder_image: Rack::Test::UploadedFile.new(
                            File.join(
                              'spec', 'fixtures', 'assets', 'example.jpg'
                            )
                          )

      json = JSON.parse(response.body)
      path = '/uploads/rails_admin_content_builder'
      path << '/content_builder_image/image/1/'

      expect(response.status).to eq 200
      expect(json['image']['url']).to eq path + 'example.jpg'
      expect(
        json['image']['left_or_right']['url']
      ).to eq path + 'left_or_right_example.jpg'
    end

    it 'returns error' do
      content_builder = FactoryGirl.create :content_builder
      put :create_images, id: content_builder.id, content_builder_image: nil

      json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(json['image']).to include("can't be blank")
    end
  end

  describe 'GET #search_content' do
    it 'returns valid JSON' do
      5.times do |i|
        content_builder = FactoryGirl.create :content_builder, title: "content #{i}"
      end
      5.times do |i|
        content_builder = FactoryGirl.create :content_builder, title: "title #{i}"
      end
      get :search_content, term: "content"

      json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(json.size).to eq 5
    end
  end
end
