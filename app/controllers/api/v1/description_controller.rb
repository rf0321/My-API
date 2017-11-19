class Api::V1::DescriptionController < UserController
  before_action :authenticate
  include ActionController::HttpAuthentication::Token::ControllerMethods
  def index
    render json: { info: 'Test', num: 234454 }
  end

  protected
  def authenticate
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      token == 'FOO'
    end
  end

  def render_unauthorized
    # render_errors(:unauthorized, ['invalid token'])
    obj = { message: 'Requires Authentication' }
    render json: obj, status: :unauthorized
  end
end

