class AddPurchaseOrderIdToPreshipmentAdvice < ActiveRecord::Migration
  def change
    add_column :preshipment_advices, :purchase_order_id, :integer
  end
end
