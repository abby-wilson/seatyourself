class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change

    remove_column :Users, :password_digest 
  end
end
