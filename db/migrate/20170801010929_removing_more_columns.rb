class RemovingMoreColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :operation_hours
  end
end
