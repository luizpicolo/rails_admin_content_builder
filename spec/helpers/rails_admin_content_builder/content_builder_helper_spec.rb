require "spec_helper"

describe RailsAdminContentBuilder::ContentBuilderHelpers, type: :helper do
  describe "#content_created" do
    it "return object content" do
      expect(helper.content_created).to eq(RailsAdminContentBuilder::ContentBuilder)
    end
  end

  describe "#all_contents_created" do
    it "return all contents abjects with status true" do
      content = FactoryGirl.create(:content_builder, status: true)
      expect(helper.all_contents_created).to include(content)
    end

    it "not return all contents objects with status false" do
      content = FactoryGirl.create(:content_builder, status: false)
      expect(helper.all_contents_created).not_to include(content)
    end
  end

  describe "#find_content_created_by_slug" do
    it "return contents objects by slug with status true" do
      content = FactoryGirl.create(:content_builder, status: true)
      expect(helper.find_content_created_by_slug(content.slug)).to eq(content)
    end

    it "return contents objects by slug with status true" do
      content = FactoryGirl.create(:content_builder, status: false)
      expect(helper.find_content_created_by_slug(content.slug)).not_to eq(content)
    end
  end
end