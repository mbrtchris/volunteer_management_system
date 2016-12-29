class Organization < ActiveRecord::Base
  belongs_to :class_session
  has_and_belongs_to_many :organizations
  has_many :locations
  has_many :profiles
end
