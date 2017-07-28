class BookingsController < ApplicationController

def new
  @booking = Bookings.new
end

def create

  @booking = Bookings.new
  @booking.restaurant_id  = params[:bookings][:restaurant_id]
  @booking.user_id = params[:bookings][:user_id]
  @booking.date = params[:bookings][:date]
  @booking.time = params[:bookings][:time]
  @booking.party_size = params[:bookings][:party_size]

  if @booking.save
    redirect_to '/'
    flash[:notice] = "Congrats! You're booked :) Happy eating..."
  else
    render :new
    flash.now[:error] = "Booking failed, please try again"
  end

end

end
