class ChangeTableName < ActiveRecord::Migration[5.2]
  def change
      rename_table :users_destinations, :user_destinations
  end
end
