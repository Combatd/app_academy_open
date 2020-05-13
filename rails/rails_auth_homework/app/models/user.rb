class User < ApplicationRecord
    attr_reader :password

    validates :username, :session_token, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }
    validates :password_digest, presence: { message: "Password can't be blank" }
    before_validation :ensure_session_token
end
