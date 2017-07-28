class ForeignKeys < ActiveRecord::Migration[5.0]
  def change

    add_column :bookings, :user_id, :integer
    add_column :bookings, :restaurant_id, :integer

  end
end
