# frozen_string_literal: true

class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :success
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name number address])

    devise_parameter_sanitizer.permit(:account_update, keys: %i[name number address])

    devise_parameter_sanitizer.permit(:account_edit, keys: %i[name number address])
  end

  #   def after_sign_out_path_for(resource_or_scope)
  #     request.referrer || new_user_session_path
  #  end

  def after_sign_in_path_for(_resource)
    home_path
  end
end
