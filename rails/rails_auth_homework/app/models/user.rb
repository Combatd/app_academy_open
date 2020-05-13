class User < ApplicationRecord
    attr_reader :password

    validates :username, :session_token, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }
    validates :password_digest, presence: { message: "Password can't be blank" }
    before_validation :ensure_session_token

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return user if user && BCrypt::Password.new(user.password_digest).is_password?(password)
    end
end
