class User < ApplicationRecord
  has_secure_password
  has_many :appointments
  def to_token_payload
    {
      sub: id,
      name: username
    }
  end
end
