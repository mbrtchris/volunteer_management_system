class Training < ActiveRecord::Base
  has_one :program
  has_one :location
end
