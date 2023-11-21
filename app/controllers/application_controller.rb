class ApplicationController < ActionController::Base
  # before_action :authenticate_user!, except: [:home, :products, :knowledge, :contact, :works]
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :sanitize_devise_params, if: :devise_controller?

  # def configure_permitted_parameters
  #   fields = %i[full_name email RG role CPF phone_number address]
  #   # For additional fields in app/views/devise/registrations/new.html.erb
  #   devise_parameter_sanitizer.permit(:sign_up, keys: fields)

  # #   # For additional in app/views/devise/registrations/edit.html.erb
  # #   devise_parameter_sanitizer.permit(:account_update, keys: fields)
  # end

  private

  def configure_permitted_parameters
    if resource_class == User
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[full_name email RG CPF phone_number address role password password_confirmation fantasy_name CNPJ])
      devise_parameter_sanitizer.permit(:account_update, keys: %i[email phone_number])
      devise_parameter_sanitizer.permit(:sign_in, keys: %i[email password])
    elsif resource_class == Admin
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[full_name email username password password_confirmation])
      devise_parameter_sanitizer.permit(:account_update, keys: %i[email])
      devise_parameter_sanitizer.permit(:sign_in, keys: %i[email password])
    end
  end

  # def sanitize_devise_params
  #   case params[:controller]
  #   when 'devise/sessions' # Personalize para outras ações do Devise conforme necessário
  #     devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
  #   end
  # end

  def sanitize_devise_params
    case params[:controller]
    when 'devise/registrations'
      if params[:action] == 'create'
        if resource_class == User
          devise_parameter_sanitizer.permit(:sign_up, keys: %i[full_name email RG CPF phone_number address role password password_confirmation fantasy_name CNPJ])
        elsif resource_class == Admin
          devise_parameter_sanitizer.permit(:sign_up, keys: %i[full_name email username password password_confirmation])
        end
      elsif params[:action] == 'update'
        if resource_class == User
          devise_parameter_sanitizer.permit(:account_update, keys: %i[email phone_number address])
        elsif resource_class == Admin
          devise_parameter_sanitizer.permit(:account_update, keys: %i[email])
        end
      end
    when 'devise/sessions'
      devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
    end
  end
end
