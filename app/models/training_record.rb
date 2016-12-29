class TrainingRecord < ActiveRecord::Base
  belongs_to :profile
  belongs_to :training
  has_one :program
end
