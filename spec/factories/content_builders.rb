FactoryGirl.define do
  factory :content_builder, class: RailsAdminContentBuilder::ContentBuilder do
    title { Faker::Lorem.characters }
    date_publish { Time.now }
    written_by { Faker::Name.name }
    content ''
    content_builder_category factory: :content_builder_category
    status false
  end
end
