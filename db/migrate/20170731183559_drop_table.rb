class DropTable < ActiveRecord::Migration[5.0]
  def change

    drop_table :available_times

    remove_column :bookings, :booking

    add_column :restaurants, :photo, :string

    add_column :Users, :credits, :integer

  end
end
