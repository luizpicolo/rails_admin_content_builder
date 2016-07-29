FactoryGirl.define do
  factory :content_builder_image, class: RailsAdminContentBuilder::ContentBuilderImage do
    image { Rack::Test::UploadedFile.new(File.join('spec', 'fixtures', 'assets', 'example.jpg')) }
    content_builder factory: :content_builder
  end
end
