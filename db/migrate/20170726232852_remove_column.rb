class RemoveColumn < ActiveRecord::Migration[5.0]
  def change

    remove_column :available_times, :restaurant_id
    remove_column :bookings, :restaurant_id

  end
end
