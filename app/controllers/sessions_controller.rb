class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    user = User.create_with_oauth(auth)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    #session[:user_id] = nil
    reset_session
    redirect_to root_path
  end
end
