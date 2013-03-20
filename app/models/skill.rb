class Skill < ActiveRecord::Base
  attr_accessible :description, :meeting_hrs, :title, :work_hrs, :work_desc, :meeting_desc
  
  
  validate :description, presence: true
  validate :meeting_hrs, presence: true
  validate :title, presence: true
  validate :work_hrs, presence: true
  validates :user_id, presence: true

  belongs_to :user


end
