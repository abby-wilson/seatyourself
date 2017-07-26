class AddAvailableTimes < ActiveRecord::Migration[5.0]
  def change

    add_column :available_times, :restaurant_id, :integer
    add_column :available_times, :time, :integer
    add_column :available_times, :available, :boolean 

  end
end
