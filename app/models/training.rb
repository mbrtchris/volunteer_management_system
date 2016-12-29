class Training < ActiveRecord::Base
  has_one :program
  has_one :location
  has_many :training_records
  acts_as_votable 
end
