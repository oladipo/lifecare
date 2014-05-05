class AddLocationIdToPreshipmentAdvice < ActiveRecord::Migration
  def change
    add_column :preshipment_advices, :location_id, :integer
  end
end
