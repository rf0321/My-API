require 'json/jwt'

class GenerateToken
  def oauth_key
    key = OpenSSL::PKey::RSA.new
    key
  end
end

#  def public_key
#    p_key = OpenSSL::PKey::RSA.new
#    p_key
#  end
# end
