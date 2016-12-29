class TrainingRecord < ActiveRecord::Base
  belongs_to :profile
  belongs_to :training
  has_one :program
  acts_as_votable 
end
