class AddBookings < ActiveRecord::Migration[5.0]
  def change

    add_column :bookings, :user_id, :integer
    add_column :bookings, :restaurant_id, :integer
    add_column :bookings, :booking, :string 


  end
end
