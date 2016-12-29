class ClassSession < ActiveRecord::Base
  has_one :program
  has_one :organization
  has_many :profiles
end
