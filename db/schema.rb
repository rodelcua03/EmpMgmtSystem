# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131216145154) do

  create_table "borrowed_equipments", force: true do |t|
    t.integer  "equipment_id"
    t.datetime "borrowedDate"
    t.datetime "returnedDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "borrowed_equipments", ["equipment_id"], name: "index_borrowed_equipments_on_equipment_id"

  create_table "employees", force: true do |t|
    t.string   "name"
    t.datetime "dateHired"
    t.integer  "borrowedEquipment_id"
    t.datetime "birthday"
    t.integer  "age"
    t.decimal  "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["borrowedEquipment_id"], name: "index_employees_on_borrowedEquipment_id"

  create_table "equipment", force: true do |t|
    t.string   "name"
    t.integer  "quantity"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
