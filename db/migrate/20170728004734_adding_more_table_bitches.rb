class AddingMoreTableBitches < ActiveRecord::Migration[5.0]
  def change

    add_column :bookings, :date, :date
    add_column :bookings, :time, :time
    add_column :bookings, :party_size, :integer

  end
end
