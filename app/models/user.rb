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
  has_attached_file :profile_pic, styles: { medium: "100x100#", thumb: "75x75#" , large: "250x250#"}, :default_url => "/images/default_avatar.png"
  has_many :sent_requests,
    :class_name => "Request",
    :foreign_key => "sender_id"
  has_many :received_requests,
    :class_name => "Request",
    :foreign_key => "receiver_id"


  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin 
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end