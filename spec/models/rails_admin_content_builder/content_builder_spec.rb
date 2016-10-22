require 'spec_helper'

RSpec.describe RailsAdminContentBuilder::ContentBuilder, type: :model do
  describe 'validates' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:date_publish) }
    it { should validate_presence_of(:written_by) }
  end

  describe 'associations' do
    it { should have_many(:content_builder_images) }
    it { should belong_to(:content_builder_category) }
  end

  describe 'search' do
    content = FactoryGirl.create(:content_builder)
    content_builder = RailsAdminContentBuilder::ContentBuilder

    it 'should return a searched content by title' do
      output = content_builder.search(content.title).last
      expect(output).to eq(content)
    end

    it 'should return a searched content by content' do
      output = content_builder.search(content.content).last
      expect(output).to eq(content)
    end
  end

  describe 'content_sanitized' do
    it 'should return only tag "div p img figure figcaption a iframe"' do
      @content_input = '<div></div><input/><mytag myattr="teste"></mytag><p>'
      @content_input << '</p><img/><figure></figure><figcaption></figcaption>'
      @content_input << '<a></a><iframe></iframe><textarea>'

      @content_output = '<div></div><p></p><img><figure></figure><figcaption>'
      @content_output << '</figcaption><a></a><iframe></iframe>'

      content = FactoryGirl.create(:content_builder, content: @content_input)
      expect(content.content_sanitized).to eq(@content_output)
    end

    # Return src class alt href allowfullscreen frameborder height width
    it 'should return only attrs' do
      @content_input = '<div class="test" data-method="test"></div><input/>'
      @content_input << '<p id="test"></p><img src="test" id="test"/><figure>'
      @content_input << '</figure><figcaption></figcaption><a href="#"></a>'
      @content_input << '<iframe></iframe><textarea>'

      @content_output = '<div class="test"></div><p></p><img src="test">'
      @content_output << '<figure></figure><figcaption></figcaption>'
      @content_output << '<a href="#"></a><iframe></iframe>'

      content = FactoryGirl.create(:content_builder, content: @content_input)
      expect(content.content_sanitized).to eq(@content_output)
    end
  end
end
