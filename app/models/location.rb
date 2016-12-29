class Location < ActiveRecord::Base
  belongs_to :organization
  belongs_to :profile
  belongs_to :training
  validates_formatting_of :zipcode, using: :us_zip
end
