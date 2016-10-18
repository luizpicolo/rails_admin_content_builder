require 'spec_helper'

RSpec.describe RailsAdminContentBuilder::ContentBuilderImage, type: :model do
  describe 'validates' do
    it { should validate_presence_of(:image) }
  end

  describe 'associations' do
    it { should belong_to(:content_builder) }
  end
end
