FactoryGirl.define do
  factory :content_builder_category, class: RailsAdminContentBuilder::ContentBuilderCategory do
    name { Faker::Lorem.characters }
  end
end
