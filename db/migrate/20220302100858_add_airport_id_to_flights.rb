class AddAirportIdToFlights < ActiveRecord::Migration[6.1]
  def change
    add_reference :flights, :airport, null: false, foreign_key: true
  end
end
