class CreateUsersDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :users_destinations do |t|
      t.integer :user_id 
      t.integer :destination_id
      t.timestamps null: false
    end
  end
end