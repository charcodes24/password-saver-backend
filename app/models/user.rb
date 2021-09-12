class User < ApplicationRecord
    has_secure_password

    has_many :passwords

    validates :username, presence: true 
    validates :username, uniqueness: true 
end
