class BookingController < ApplicationController

def new
  @booking = Booking.new
end

def create

  @booking = Booking.new
  # @booking.restaurant_id  = params[:booking][:restaurant_id]
  @user_id.user_id = params[:bookings][:user_id]
  @booking.date = params[:bookings][:date]
  @booking.time = params[:bookings][:time]
  @booking.party_size = params[:bookings][:party_size]

  if @booking.save
    redirect_to profile_path
    flash[:notice] = "Congrats! You're booked :) Happy eating..."
  else
    render :new
    flash.now[:error] = "Booking failed, please try again"
  end

end

end
