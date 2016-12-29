class TrainingRecord < ActiveRecord::Base
  belongs_to :profile
  belongs_to :training
end
