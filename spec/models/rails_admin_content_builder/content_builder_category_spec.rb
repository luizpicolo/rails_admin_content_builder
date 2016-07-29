require 'spec_helper'

RSpec.describe RailsAdminContentBuilder::ContentBuilderCategory, :type => :model do
  describe 'validates' do
    it { should validate_presence_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:content_builders) }
  end
end
