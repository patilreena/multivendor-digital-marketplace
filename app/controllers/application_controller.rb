class ApplicationController < ActionController::Base
  layout :layout_by_resource

  protect_from_forgery with: :exception
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  private
  
  def layout_by_resource
    if devise_controller?
      "auth"
    else
      "application"
    end
  end
    def configure_permitted_parameters
      added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end


