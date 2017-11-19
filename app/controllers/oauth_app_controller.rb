class OauthAppController < UserController
  def index
    if authenticated_user
      @name = authenticated_user.name
      render partial: 'oauth_app/oauth'
    else
      redirect_to root_path
    end
  end

  def show
    if authenticated_user
     @token = JsonWebToken.private_key
    else
      redirect_to root_path
    end
  end
end
