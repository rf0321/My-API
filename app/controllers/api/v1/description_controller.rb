class Api::V1::DescriptionController < UserController
  before_action :authentication
  include ActionController::HttpAuthentication::Token::ControllerMethods
  def index
      id = authenticated_user.id
      name = authenticated_user.name
      created_at = authenticated_user.created_at
      updated_at = authenticated_user.updated_at
      render json: { id: id, name: name, created_at: created_at, updated_at: updated_at }
  end

  def authentication
    authenticate_token || authenticated_user || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      token == 'testtoken00810'
    end
  end

  def render_unauthorized
    # render_errors(:unauthorized, ['invalid token'])
    obj = { message: 'Requires Authentication' }
    render json: obj, status: :unauthorized
  end
end

