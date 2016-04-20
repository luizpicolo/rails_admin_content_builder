require "rails_admin_content_builder/engine"

module RailsAdminContentBuilder
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class ContentBuilder < Base
        RailsAdmin::Config::Actions.register(self)
        register_instance_option :member do
          true
        end

        register_instance_option :link_icon do
          'icon-align-justify'
        end

        register_instance_option :http_methods do
          [:get, :post]
        end

        register_instance_option :controller do
          Proc.new do
            @object = @abstract_model.model.find(params[:id])
            @response = {}

            if request.post?
              if params.present?

                if params[:commit] == 'Publish'
                  status = true
                elsif params[:commit] == 'Unpublish'
                  status = false
                elsif params[:commit] == 'Save'
                  status = @object.status
                end

                if @object.update(content: params[:content], status: status)
                  flash[:success] = t('admin.actions.content_builder.success_save')
                else
                  flash[:error] = t('admin.actions.content_builder.error_save')
                end
              end
            end

            render :action => @action.template_name
          end
        end
      end
    end
  end
end
