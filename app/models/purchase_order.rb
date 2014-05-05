class PurchaseOrder < ActiveRecord::Base
	has_one :location

  attr_accessible :Description, :ExpiryDate, :IssueDate, :Number, :Quantity, :location_id
end
