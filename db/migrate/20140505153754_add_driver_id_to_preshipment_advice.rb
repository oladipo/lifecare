class AddDriverIdToPreshipmentAdvice < ActiveRecord::Migration
  def change
    add_column :preshipment_advices, :driver_id, :integer
  end
end
