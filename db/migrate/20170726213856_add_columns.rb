class AddColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :street_address, :string
    add_column :restaurants, :neighbourhood, :string
    add_column :restaurants, :menu, :text
    add_column :restaurants, :summary, :text

    add_column :users, :name, :string
    add_column :users, :email, :string

  end
end
