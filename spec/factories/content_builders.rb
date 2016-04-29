FactoryGirl.define do
  factory :content_builder, class: RailsAdminContentBuilder::ContentBuilder do
    title { Faker::Lorem.characters }
    date_publish { Time.now }
    written_by { Faker::Name.name }
    summary { Faker::Lorem.paragraphs }
    content ''
    status false
  end
end
