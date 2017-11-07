class ApplicationController < ActionController::Base
  layout :layout_by_resource
  helper_method :current_order

  protect_from_forgery with: :exception
 
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      order = Order.new
      if !current_user.nil?
        order.user_id = current_user.id;
      end
      order
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
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :last_name, :first_name, :website, :role]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end


