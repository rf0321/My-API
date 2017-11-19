class HomeController < UserController
  def index
    if authenticated_user
      @name = authenticated_user.name
      render partial: 'authed'
    else
      render partial: 'noauth'
    end
  end
end
