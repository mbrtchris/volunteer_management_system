class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
  belongs_to :class_session
end