class AddDriverIdToWaybill < ActiveRecord::Migration
  def change
    add_column :waybills, :driver_id, :integer
  end
end
