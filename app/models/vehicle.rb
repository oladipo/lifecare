class Vehicle < ActiveRecord::Base
	belongs_to :model

  attr_accessible :Name, :model_id
end
