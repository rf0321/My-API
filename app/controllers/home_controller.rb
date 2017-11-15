class HomeController < UserController
  def index
    if current_user
      @name = current_user.name
      render partial: 'authed'
    else
      render partial: 'noauth'
    end
  end
end
