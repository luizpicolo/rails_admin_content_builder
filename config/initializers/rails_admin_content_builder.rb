RailsAdmin.config do |config|
  config.actions do
    content_builder do
      only ['ContentBuilder']
    end

    config.model 'ContentBuilder' do
      list do
        field :id
        field :title
        field :date_publish
        field :status
      end
      edit do
        field :title
        field :date_publish
      end
    end
  end
end
