class User < ApplicationRecord
    USERNAME_MAXIMUM_LENGTH = 30
    USERNAME_MINIMUM_LENGTH = 10

    has_many :messages 
    validates :username,  presence: true, length: { maximum: USERNAME_MAXIMUM_LENGTH, minimum: USERNAME_MINIMUM_LENGTH }
    has_secure_password
end
