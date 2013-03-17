class Startup < ActiveRecord::Base
  attr_accessible :startup_name, :stup_angel, :stup_desc, :startup_url, :fb_url, :tw_url

  validates :startup_name, presence: true
  validates :stup_desc, presence: true
  validates :user_id, presence: true

  belongs_to :user



end
