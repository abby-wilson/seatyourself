class FixingMistakes < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :operating_hours
  end
end
