require 'spec_helper'

RSpec.describe RailsAdminContentBuilder::ContentBuilder, :type => :model do
  describe 'validates' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:date_publish) }
  end

  describe 'associations' do
    it { should have_many(:content_builder_images) }
  end
end
