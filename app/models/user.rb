class User < ApplicationRecord
  has_secure_password

  valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false }, format: { with: valid_email }

  has_many :appointments
  def to_token_payload
    {
      sub: id,
      name: username
    }
  end
end
