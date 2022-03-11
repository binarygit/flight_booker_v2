class BookingsController < ApplicationController
  def new
    #@booking = Booking.new
    #params[:passenger_num].to_i.times { @booking.build_passenger }
    @flight = Flight.new
    params[:passenger_num].to_i.times { @flight.passengers.build }
  end

  def create
    byebug
  end
end
