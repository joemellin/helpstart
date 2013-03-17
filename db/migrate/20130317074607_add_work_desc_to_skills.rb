class AddWorkDescToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :work_desc, :string
  end
end
