class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :bio, :linked_in, :phone, :profile_pic
  # attr_accessible :title, :body

    validates :email, presence: true
    validates :name, presence: true
    validates_attachment :profile_pic,
                        #content_type: { content_type: ['profile_pic/jpeg','profile_pic/jpg','profile_pic/png','profile_pic/gif']},
                        size: {less_than: 5.megabytes}
  has_many :skills
  has_many :startups

  has_attached_file :profile_pic, styles: { medium: "100x100>", thumb: "50x50>" , large: "250x250>"}



end