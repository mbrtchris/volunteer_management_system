class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
  belongs_to :class_session
  has_many :programs
  has_one :location
  acts_as_votable 
end
