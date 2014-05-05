class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :Name
      t.string :Number

      t.timestamps
    end
  end
end
