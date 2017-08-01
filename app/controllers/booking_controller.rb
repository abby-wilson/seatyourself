class BookingController < ApplicationController

def new
  @booking = Booking.new
end

def create

  @booking = Booking.new
  # @booking.restaurant_id  = params[:booking][:restaurant_id]
  @booking.user_id = current_user.id
  @booking.restaurant_id = params[:booking][:restaurant_id]
  @booking.date = params[:booking][:date]
  @booking.time = params[:booking][:time]
  @booking.party_size = params[:booking][:party_size]

  if @booking.save
    redirect_to profile_path
    flash[:notice] = "Congrats! You're booked :) Happy eating..."
  else
    render :new
    flash.now[:error] = "Booking failed, please try again"
  end

end



def show
  # PRINT ALL BOOKINGS WITH THE CURRENT USER ID THAT HAPPEN AFTER THE TIME.NOW 
end


end
