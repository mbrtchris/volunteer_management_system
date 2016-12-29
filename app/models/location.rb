class Location < ActiveRecord::Base
  belongs_to :organization
  belongs_to :profile
  belongs_to :training
end
