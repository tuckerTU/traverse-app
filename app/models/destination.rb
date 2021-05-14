class Destination < ActiveRecord::Base
    has_many :users, through: :users_destinations
end
