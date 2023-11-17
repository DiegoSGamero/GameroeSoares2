class ApplicationController < ActionController::Base
  # before_action :authenticate_user!, except: [:home, :products, :knowledge, :contact, :works]
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # def configure_permitted_parameters
  #   fields = %i[full_name email RG role CPF phone_number address]
  #   # For additional fields in app/views/devise/registrations/new.html.erb
  #   devise_parameter_sanitizer.permit(:sign_up, keys: fields)

  #   # For additional in app/views/devise/registrations/edit.html.erb
  #   devise_parameter_sanitizer.permit(:account_update, keys: fields)
  # end
end
