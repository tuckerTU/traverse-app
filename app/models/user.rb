class User < ActiveRecord::Base
    has_secure_password
    has_many :user_destinations
    has_many :destinations, through: :user_destinations
    validates :username, uniqueness: :true
    validates :password, length: { in: 6..60 }
end
