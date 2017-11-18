
class Oauth
  include ActiveModel::Model
  def self.profile(user_id, name, created_at, updated_at)
    json = {
       id:user_id,
       name:name,
       created_at:created_at,
       updated_at:updated_at
    }
     authkey(json)
  end

  def public.authkey(json_data)
    rsa_private = OpenSSL::PKey::RSA.generate 2048
    rsa_public = rsa_private.public_key
    token = JWT.encode json_data, rsa_private, 'RS256'
    oauth_data(token, rsa_public)
  end

  def public.oauth_data(api_token, rsa_public)
    decoded_token = JWT.decode api_token, rsa_public, true, { algorithm: 'RS256' }
    token_data = api_token.to_s
    token_data
    data = decoded_token.first
    data
  end
end