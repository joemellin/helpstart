class FixColumnTitles < ActiveRecord::Migration
  def change

    rename_column :startups, :startup_name, :name
    rename_column :startups, :stup_desc, :description
    rename_column :startups, :startup_url, :url
    rename_column :startups, :stup_angel, :angel_co
  end
end
