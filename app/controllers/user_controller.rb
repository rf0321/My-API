require 'json_web_token'

class UserController < SessionsController
  helper_method :authenticated_user
  private
  def authenticated_user
    @authenticated_user= User.find(session[:user_id]) if session[:user_id]
  end
end