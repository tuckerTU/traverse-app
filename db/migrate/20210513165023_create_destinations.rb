class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :city 
      t.string :country
      t.string :continent
      t.timestamps null: false
    end
  end
end
