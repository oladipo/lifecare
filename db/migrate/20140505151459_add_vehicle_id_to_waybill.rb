class AddVehicleIdToWaybill < ActiveRecord::Migration
  def change
    add_column :waybills, :vehicle_id, :integer
  end
end
