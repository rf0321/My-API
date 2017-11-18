class Api::V1::DescriptionController < UserController
  before_action :check_api_key

  def index
    data = Oauth.profile(1,"Foo","Hoge","Foo")
    render json: data
  end
  def add_permit

  end
  private
  def product_params
    params.require(:product).permit(:name)
  end

  # api keyのチェック
  def check_api_key
    if request.headers['Authorization'] == 'token'
      return true
    else
      render json: { message: 'Bad Authentication Data',document_url: 'making now' }.to_json, status:400
   end
  end
end
