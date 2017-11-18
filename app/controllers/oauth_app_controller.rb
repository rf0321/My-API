class OauthAppController < UserController
  def index
    if current_user
      @name = current_user.name
      render partial: 'oauth_app/oauth'
    else
      redirect_to root_path
    end
  end

  def show
    if current_user
      @name = current_user.name
      @your_key = current_user.oauth_token
    else
      redirect_to root_path
    end
  end
end
