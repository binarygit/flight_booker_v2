class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @flights = Flight.search(params)
  end

  private

  def airport_params
    params.permit(:username, :departure_airport, :arrival_airport)
  end
end
