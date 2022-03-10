class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map {|a| [a.airport_code, a.id] }
    @dates = Flight.all.map {|f| [f.start_date, f.start_date]}
    @flights = Flight.search(flight_params.to_h)
    @passenger_num = params[:passenger_num]
  end

  private

  def flight_params
    params.permit(:departure_id, :arrival_id, :start_date)
  end
end
