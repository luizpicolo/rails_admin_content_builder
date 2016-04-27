unless Rails.env.test?
  RailsAdmin.config do |config|
    config.actions do
      content_builder do
        only ['RailsAdminContentBuilder::ContentBuilder']
      end

      config.model 'RailsAdminContentBuilder::ContentBuilder' do
        list do
          field :id
          field :title
          field :date_publish
          field :status
        end
        edit do
          field :title
          field :date_publish
          field :content_builder_relateds
        end
      end

      config.model 'RailsAdminContentBuilder::ContentBuilderImage' do
        visible false
      end
    end
  end
end
