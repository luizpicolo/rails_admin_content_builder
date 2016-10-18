FactoryGirl.define do
  content_builder_category = RailsAdminContentBuilder::ContentBuilderCategory
  factory :content_builder_category, class: content_builder_category do
    name { Faker::Lorem.characters }
  end
end
