# frozen_string_literal: true

module Admin
  class BaseController < ApplicationController
    before_action :authenticate_admin!

    layout 'admin'

    private

    def authenticate_admin!
      return if current_admin_user

      flash[:alert] = t 'no_permission'
      redirect_to new_admin_user_session_path
    end
  end
end
