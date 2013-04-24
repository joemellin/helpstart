class Request < ActiveRecord::Base
  attr_accessible :message, :skill_id, :startup_id, :sender_id, :receiver_id 

  belongs_to :sender,
    :class_name => "User",
    :foreign_key => "sender_id"

  belongs_to :receiver,
    :class_name => "User",
    :foreign_key => "receiver_id"
    
  belongs_to :startup
  belongs_to :skill

  validate :message, :skill_id, :startup_id, presence: true

end
