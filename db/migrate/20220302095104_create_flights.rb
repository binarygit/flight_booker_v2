class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :airport, null: false, foreign_key: true
      t.date :start_date
      t.string :duration

      t.timestamps
    end
  end
end
