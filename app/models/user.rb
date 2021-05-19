class User < ActiveRecord::Base
    has_secure_password
    has_many :destinations, through: :users_destinations
    validates :username, uniqueness: :true
    validates :password, length: { in: 6..20 }
end
