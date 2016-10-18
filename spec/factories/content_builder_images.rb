FactoryGirl.define do
  content_builder_image = RailsAdminContentBuilder::ContentBuilderImage
  factory :content_builder_image, class: content_builder_image do
    image do
      Rack::Test::UploadedFile.new(
        File.join('spec', 'fixtures', 'assets', 'example.jpg')
      )
    end
    content_builder factory: :content_builder
  end
end
