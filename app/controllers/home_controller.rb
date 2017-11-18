class HomeController < UserController
  def index
    if current_user
      @id = current_user.id
      @name = current_user.name
      @date = current_user.created_at
      @date2 = current_user.to_json
      render partial: 'authed'
    else
      render partial: 'noauth'
    end
  end
end
