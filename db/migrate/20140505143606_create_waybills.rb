class CreateWaybills < ActiveRecord::Migration
  def change
    create_table :waybills do |t|
      t.string :Number
      t.string :Description
      t.date :DispatchDate
      t.integer :Quantity
      t.integer :location_id
      t.integer :purchase_order_id
      t.integer :transporter_id
      
      t.timestamps
    end
  end
end
