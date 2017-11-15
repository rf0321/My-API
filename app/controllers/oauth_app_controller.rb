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
      string_key = OpenSSL::PKey::RSA.new.to_s
      decoded_key = string_key.delete("-BEGINPUBLCKEY")
      #@your_key = decoded_key
      @name = current_user.name

    else
      redirect_to root_path
    end
  end
end
