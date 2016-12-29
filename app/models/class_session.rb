class ClassSession < ActiveRecord::Base
  has_one :program
  has_one :organization
  has_many :profiles
  has_many :grades
  has_one :guest_educator
end
