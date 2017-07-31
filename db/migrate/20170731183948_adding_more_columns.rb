class AddingMoreColumns < ActiveRecord::Migration[5.0]
  def change

    add_column :Users, :role, :string
    add_column :restaurants, :user_id, :integer

  end
end
