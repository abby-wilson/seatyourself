class CreateAvailableTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :available_times do |t|

      t.timestamps
    end
  end
end
