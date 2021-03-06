# frozen_string_literal: true

class ApplicationController < ActionController::Base
  layout :layout

  private

  def after_sign_in_path_for(resource)
    return admin_root_path if resource.is_a?(AdminUser) || resource == :admin_user

    root_path
  end

  def layout
    if devise_controller? && devise_mapping.name == :admin_user
      'admin'
    else
      'application'
    end
  end
end
