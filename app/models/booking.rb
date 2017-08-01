class Booking < ApplicationRecord

belongs_to :restaurant
belongs_to :user

#  @booking_array.each do |booking|
#      puts booking
# end

end
