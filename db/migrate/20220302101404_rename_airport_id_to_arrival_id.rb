class RenameAirportIdToArrivalId < ActiveRecord::Migration[6.1]
  def change
    rename_column :flights, :airport_id, :arrival_id
  end
end
