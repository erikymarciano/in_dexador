class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :password, presence: true, length: 6..24
    validates :email, presence: true
end
