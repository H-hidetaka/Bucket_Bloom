class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  # skip_before_action :verify_authenticity_token, if: :devise_controller
  before_action :configure_permitted_parameters, if: :devise_controller?


  def http_authenticate
    authenticate_or_request_with_http_digest do |user_name, password|
      user_name == "foo" && password == "bar"
    end
    warden.custom_failure! if performed?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name ,:encrypted_password , :email])
  end
end
