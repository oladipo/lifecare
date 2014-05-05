class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :Name
      t.integer :model_id
      t.timestamps
    end
  end
end
