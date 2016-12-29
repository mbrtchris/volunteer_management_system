class Program < ActiveRecord::Base
  belongs_to :profile
  belongs_to :class_session
  belongs_to :training_record
  belongs_to :training
end
