# frozen_string_literal: true

class Ckeditor::Picture < Ckeditor::Asset
  # for validation, see https://github.com/igorkasyanchuk/active_storage_validations

  self.inheritance_column = nil
  def url_content
    #'http://localhost:3001' + Rails.application.routes.url_helpers.rails_representation_url(storage_data.variant(resize: '800>').processed, only_path: true)
    'http://' + Rails.configuration.action_mailer.default_url_options[:host] + Rails.application.routes.url_helpers.rails_representation_url(storage_data.variant(resize: '800>').processed, only_path: true )
    #rails_representation_url(storage_data.variant(resize: '800>').processed, only_path: true)
  end

  def url_thumb
    #'http://localhost:3001' + Rails.application.routes.url_helpers.rails_representation_url(storage_data.variant(resize: '118x100').processed, only_path: true)
    'http://' +  Rails.configuration.action_mailer.default_url_options[:host] +  Rails.application.routes.url_helpers.rails_representation_url(storage_data.variant(resize: '118x100').processed, only_path: true )
     #rails_representation_url(storage_data.variant(resize: '118x100').processed, only_path: true)
  end
end
