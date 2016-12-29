class GuestEducator < ActiveRecord::Base
  belongs_to :class_session
  acts_as_votable 
end
