class User < ApplicationRecord
  has_secure_password
  def to_token_payload
    {
      sub: id,
      name: username
    }
  end
end
