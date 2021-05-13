class AddVisitedColumnToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :visited, :boolean    
  end
end
