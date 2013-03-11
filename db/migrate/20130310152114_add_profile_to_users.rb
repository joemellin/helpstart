class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :linked_in, :string
    add_column :users, :bio, :string
    add_column :users, :name, :string
    add_column :users, :phone, :string
  end
end
