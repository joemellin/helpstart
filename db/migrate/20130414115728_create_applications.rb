class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :startup_id
      t.integer :skill_id
      t.string :message

      t.timestamps
    end
  end
end
