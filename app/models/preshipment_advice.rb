class PreshipmentAdvice < ActiveRecord::Base
	has_one :purchase_order
	has_one :customer
	has_one :waybill
	has_one :vehicle
	has_one :driver
	has_one :location

  attr_accessible :Description, :Quantity, :TimeOfArrival, :TimeOfDispatch, :purchase_order_id,
  :customer_id, :waybill_id, :vehicle_id, :driver_id, :location_id

end
