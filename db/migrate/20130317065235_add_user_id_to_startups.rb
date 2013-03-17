class AddUserIdToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :user_id, :integer
    add_index :startups, :user_id
  end
end
