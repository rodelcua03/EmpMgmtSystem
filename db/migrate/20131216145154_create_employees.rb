class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.datetime :dateHired
      t.references :borrowedEquipment, index: true
      t.datetime :birthday
      t.integer :age
      t.decimal :salary

      t.timestamps
    end
  end
end
