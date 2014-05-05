class CreateTransporters < ActiveRecord::Migration
  def change
    create_table :transporters do |t|
      t.string :Name

      t.timestamps
    end
  end
end
