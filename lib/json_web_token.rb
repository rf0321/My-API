class JsonWebToken
  def self.private_key
    OpenSSL::PKey::RSA.generate 2048
  end

  def encode(payload)
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end
end