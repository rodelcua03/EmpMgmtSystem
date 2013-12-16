class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :quantity
      t.text :description

      t.timestamps
    end
  end
end
