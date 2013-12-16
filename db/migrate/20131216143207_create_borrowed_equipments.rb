class CreateBorrowedEquipments < ActiveRecord::Migration
  def change
    create_table :borrowed_equipments do |t|
      t.references :equipment, index: true
      t.datetime :borrowedDate
      t.datetime :returnedDate

      t.timestamps
    end
  end
end
