require 'spec_helper'

RSpec.describe RailsAdminContentBuilder::ContentBuilder, :type => :model do
  describe 'validates' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:date_publish) }
  end

  describe 'associations' do
    it { should have_many(:content_builder_images) }
  end

  describe 'content_sanitized' do
    it 'should return only tag "div p img figure figcaption a iframe"' do
      @content_input = '<div></div><input/><mytag myattr="teste"></mytag><p></p><img/><figure></figure><figcaption></figcaption><a></a><iframe></iframe><textarea>'
      @content_output = '<div></div><p></p><img><figure></figure><figcaption></figcaption><a></a><iframe></iframe>'
      content = FactoryGirl.create(:content_builder, content: @content_input)
      expect(content.content_sanitized).to eq(@content_output)
    end

    it 'should return only attrs "src class alt href allowfullscreen frameborder height width"' do
      @content_input = '<div class="test" data-method="test"></div><input/><p id="test"></p><img src="test" id="test"/><figure></figure><figcaption></figcaption><a href="#"></a><iframe></iframe><textarea>'
      @content_output = '<div class="test"></div><p></p><img src="test"><figure></figure><figcaption></figcaption><a href="#"></a><iframe></iframe>'
      content = FactoryGirl.create(:content_builder, content: @content_input)
      expect(content.content_sanitized).to eq(@content_output)
    end
  end
end
