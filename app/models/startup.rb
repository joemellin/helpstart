class Startup < ActiveRecord::Base
  attr_accessible :startup_name, :stup_angel, :stup_desc, :startup_url, :fb_url, :tw_url, :logo, :corp_docs

  validates :startup_name, presence: true
  validates :stup_desc, presence: true
  validates :user_id, presence: true


  validates_attachment :logo, presence: true,
                        content_type: { content_type: ['logo/jpeg','logo/jpg','logo/png','logo/gif']},
                        size: {less_than: 5.megabytes}

  validates_attachment :corp_docs, presence: true,
                        content_type: { content_type: ['corp_docs/pdf']},
                        size: {less_than: 5.megabytes}

  belongs_to :user

  has_attached_file :logo, styles: { medium: "100x100>", thumb: "50x50>" , large: "250x250>"}
  has_attached_file :corp_docs


end