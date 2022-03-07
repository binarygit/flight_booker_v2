require "test_helper"

class AirportTest < ActiveSupport::TestCase
  test 'KTM airport has a single departure flight on March 2 2022' do
    airport = airports(:ktm)
    departing_flights = airport.departing_flights
    departure_date = departing_flights.first.start_date
    
    assert_equal 1, departing_flights.length
    assert_equal 'Thu, 02 Mar 2022'.to_date, departure_date
  end

  test 'KTM airport has a single arrival flight on March 3 2022' do
    airport = airports(:ktm)
    arriving_flights = airport.arriving_flights
    arrival_date = arriving_flights.first.start_date
    
    assert_equal 1, arriving_flights.length
    assert_equal 'Thu, 03 Mar 2022'.to_date, arrival_date
  end

  test 'PKR airport has a single arrival flight on March 2 2022' do
    airport = airports(:pkr)
    arriving_flights = airport.arriving_flights
    arrival_date = arriving_flights.first.start_date
    
    assert_equal 1, arriving_flights.length
    assert_equal 'Thu, 02 Mar 2022'.to_date, arrival_date
  end

  test 'PKR airport has a single departure flight on March 3 2022' do
    airport = airports(:pkr)
    departing_flights = airport.departing_flights
    departure_date = departing_flights.first.start_date
    
    assert_equal 1, departing_flights.length
    assert_equal 'Thu, 03 Mar 2022'.to_date, departure_date
  end
end
