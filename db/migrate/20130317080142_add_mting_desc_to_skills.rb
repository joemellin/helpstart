class AddMtingDescToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :meeting_desc, :string
  end
end
