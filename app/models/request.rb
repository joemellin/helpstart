class Request < ActiveRecord::Base
  attr_accessible :message, :skill_id, :startup_id, :sender_id, :receiver_id 

  validate :message, presence: true
  validate :skill_id, presence: true
  validate :startup_id, presence: true

  belongs_to :sender,
    :class_name => "User",
    :foreign_key => "sender_id"

  belongs_to :receiver,
    :class_name => "User",
    :foreign_key => "receiver_id"
    
  belongs_to :startup,
    :class_name => "Startup",
    :foreign_key => "startup_id"

  belongs_to :skill,
    :class_name => "Skill",
    :foreign_key => "skill_id"

end
