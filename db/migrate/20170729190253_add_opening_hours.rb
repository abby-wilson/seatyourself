class AddOpeningHours < ActiveRecord::Migration[5.0]
  def change

    add_column :restaurants, :opening_hours, :string 

  end
end
