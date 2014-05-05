class AddWaybillIdToPreshipmentAdvice < ActiveRecord::Migration
  def change
    add_column :preshipment_advices, :waybill_id, :integer
  end
end
