class Application < ActiveRecord::Base
  attr_accessible :message, :skill_id, :startup_id

  validate :message, presence: true
  validate :skill_id, presence: true
  validate :startup_id, presence: true

  has_one :skills
  has_one :startups

end
