class Location < ActiveRecord::Base
  attr_accessible :Name
  validates :Name , presence: true
end
