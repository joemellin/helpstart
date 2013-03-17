class AddHoursToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :meeting_hrs, :integer
    add_column :skills, :work_hrs, :integer
  end
end
