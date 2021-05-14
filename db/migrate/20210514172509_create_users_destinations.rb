class CreateUsersDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :users_destinations |t|
      t.integer :user_id 
      t.integer :destination_id
    end
  end
end
