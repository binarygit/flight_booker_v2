class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map {|a| [a.airport_code, a.id] }
    @dates = Flight.all.map {|f| [f.start_date, f.start_date]}
    #@flights = Flight.search(params)
  end

  private

  def airport_params
    params.permit(:username, :departure_airport, :arrival_airport)
  end
end
