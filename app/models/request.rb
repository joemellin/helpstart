class Request < ActiveRecord::Base
  attr_accessible :message, :skill_id, :startup_id

  validate :message, presence: true
  validate :skill_id, presence: true
  validate :startup_id, presence: true

  belongs_to :sender,
    :class_name => "User",
    :foreign_key => "sender_id"

  belongs_to :receiver,
    :class_name => "User",
    :foreign_key => "receiver_id"

end
