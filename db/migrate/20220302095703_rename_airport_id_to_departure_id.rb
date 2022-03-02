class RenameAirportIdToDepartureId < ActiveRecord::Migration[6.1]
  def change
    rename_column :flights, :airport_id, :departure_id
  end
end
