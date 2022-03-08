class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: :departure_id
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: :arrival_id

  def self.search(search)
    if search.has_key?(:departure_airport)
      dep_airport = Airport.where(airport_code: search[:departure_airport])
      arr_airport = Airport.where(airport_code: search[:arrival_airport])
      Flight.where(departure_id: dep_airport)
            .where(arrival_id: arr_airport)
    end
  end
end
