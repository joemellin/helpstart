class AddUrlsToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :startup_url, :string
    add_column :startups, :fb_url, :string
    add_column :startups, :tw_url, :string
  end
end
