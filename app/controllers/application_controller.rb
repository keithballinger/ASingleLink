class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :current_user
  
  protected 
  
  def current_user
    user_id = session[:current_user_id]
    
    @user = User.find_by_id user_id
    return @user
  end
  
end
