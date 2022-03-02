class Airport < ApplicationRecord
  has_many :departing_flights, class_name: 'Flight', foreign_key: :departure_id 

  before_save do
    self.airport_code.upcase!
  end
end
