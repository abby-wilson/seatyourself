class ImSoDone < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :opening_time
    remove_column :restaurants, :closing_time
    
  end
end
