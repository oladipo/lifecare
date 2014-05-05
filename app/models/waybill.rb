class Waybill < ActiveRecord::Base
	belongs_to :location
	has_one :purchase_order
	has_one :transporter
	has_one :vehicle
	has_one :driver

  attr_accessible :Description, :DispatchDate, :Number, :Quantity, :location_id, :purchase_order_id, 
  :transporter_id, :vehicle_id, :driver_id
end
