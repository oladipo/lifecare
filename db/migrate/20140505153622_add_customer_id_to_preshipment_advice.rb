class AddCustomerIdToPreshipmentAdvice < ActiveRecord::Migration
  def change
    add_column :preshipment_advices, :customer_id, :integer
  end
end
