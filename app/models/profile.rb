class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :linked_in, :name, :bilo
end
