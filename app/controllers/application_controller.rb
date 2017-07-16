class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # before_action :authenticate_user!
  
  before_action :categories, :brands
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    devise_parameter_sanitizer.permit(:account_update, keys:[:role])
  end
  
  def categories
        @categories = Category.all
  end      
  
  def brands
        @brands = Product.pluck(:brand).sort.uniq
  end
 
  
end

# use this if the above doesnt work

# def configure_permitted_parameters

#   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, 
#     :password_confirmation, :role) }

#   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, 
#     :password_confirmation, :current_password, :role) }
# end