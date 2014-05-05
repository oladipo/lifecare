class CreatePreshipmentAdvices < ActiveRecord::Migration
  def change
    create_table :preshipment_advices do |t|
      t.string :Description
      t.integer :Quantity
      t.datetime :TimeOfArrival
      t.datetime :TimeOfDispatch

      t.timestamps
    end
  end
end
