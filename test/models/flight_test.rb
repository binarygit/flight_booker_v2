require "test_helper"

class FlightTest < ActiveSupport::TestCase
  test 'flight KTM to PKR on March 3rd 2022' do
    flight = flights(:to_pkr)
    departure_airport = flight.departure_airport.airport_code
    arrival_airport = flight.arrival_airport.airport_code
    departure_date = flight.start_date

     assert_equal 'KTM', departure_airport
     assert_equal 'PKR', arrival_airport
     assert_equal '2022-03-02'.to_date, departure_date
  end

  test 'flight PKR to KTM on March 4th 2022' do
    flight = flights(:to_ktm)
    departure_airport = flight.departure_airport.airport_code
    arrival_airport = flight.arrival_airport.airport_code
    departure_date = flight.start_date

     assert_equal 'PKR', departure_airport
     assert_equal 'KTM', arrival_airport
     assert_equal '2022-03-03'.to_date, departure_date
  end
end
