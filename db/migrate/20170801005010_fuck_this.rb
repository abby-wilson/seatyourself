class FuckThis < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :operating_hours, :array 
  end
end
