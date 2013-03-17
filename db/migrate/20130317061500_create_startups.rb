class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :startup_name
      t.string :stup_desc
      t.string :stup_angel

      t.timestamps
    end
  end
end
