class AddUserIdBackToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :user_id, :integer
  end
end