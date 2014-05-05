class AddVehicleIdToPreshipmentAdvice < ActiveRecord::Migration
  def change
    add_column :preshipment_advices, :vehicle_id, :integer
  end
end
