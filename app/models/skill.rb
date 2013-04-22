class Skill < ActiveRecord::Base
  attr_accessible :description, :meeting_hrs, :title, :work_hrs, :work_desc, :meeting_desc, :image, :tag_list
  acts_as_taggable
  
  validate :description, presence: true
  validate :meeting_hrs, presence: true
  validate :title, presence: true
  validate :work_hrs, presence: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :requests
  validates_attachment :image,
                    #content_type: { content_type: ['profile_pic/jpeg','profile_pic/jpg','profile_pic/png','profile_pic/gif']},
                    size: {less_than: 5.megabytes}
  has_attached_file :image, styles: { small: "100x100>", long: "214x70#" , large: "780x250#"}


end
