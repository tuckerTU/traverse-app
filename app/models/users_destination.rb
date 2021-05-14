class UsersDestination < ActiveRecord:Base 
    has_many :users 
    has_many :destinations 
end