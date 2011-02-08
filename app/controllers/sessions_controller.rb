class SessionsController < ApplicationController
  def create
      
      auth = request.env["rack.auth"]
      
      facebook_id = auth['uid']
      first_name = auth['user_info']['first_name']
      last_name = auth['user_info']['last_name'] 
      email = auth['extra']['user_hash']['email'] 
    
      user = User.find_by_facebook_id(facebook_id)
      
      if user.nil?
        user = User.create :facebook_id => facebook_id, 
                            :first_name => first_name,
                            :last_name => last_name, 
                            :email => email
      end
      
      session[:current_user_id] = user.id
      
      redirect_to '/'
  end
end
