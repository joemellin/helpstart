class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
