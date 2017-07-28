class AddMoreColumns < ActiveRecord::Migration[5.0]
  def change

    add_column :Users, :password, :password_digest 

  end
end
