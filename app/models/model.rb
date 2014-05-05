class Model < ActiveRecord::Base
	has_many :vehicles
	
  attr_accessible :Name
end
