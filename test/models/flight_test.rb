require "test_helper"

class FlightTest < ActiveSupport::TestCase
  test 'flight departs from KTM on March 3rd 2022' do
    departure_airport = flights(:to_pkr).departure_airport.airport_code
    departure_date = flights(:to_pkr).start_date
     assert_equal 'KTM', departure_airport
     assert_equal '2022-03-02'.to_date, departure_date
  end
end
