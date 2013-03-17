class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    validates :linked_in, presence: true
    validates :name, presence: true
    validates :bio, presence: true
  
  has_many :skills
  has_one :profile
  has_many :startup


  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :bio, :linked_in, :phone
  # attr_accessible :title, :body
end
