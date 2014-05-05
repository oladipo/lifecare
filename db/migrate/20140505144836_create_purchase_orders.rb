class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.string :Number
      t.string :Description
      t.date :IssueDate
      t.date :ExpiryDate
      t.integer :Quantity
      t.integer :location_id
      
      t.timestamps
    end
  end
end
