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

ActiveRecord::Schema.define(version: 20170202213517) do

  create_table "inventory_items", force: :cascade do |t|
    t.integer "variant_id"
    t.integer "warehouse_id"
    t.integer "quantity"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "amount",           null: false
    t.string   "shipping_address"
    t.string   "billing_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
  end

  create_table "shipments", force: :cascade do |t|
    t.integer  "warehouse_id"
    t.integer  "order_id"
    t.string   "state",        default: "pending", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "variants", force: :cascade do |t|
    t.integer "product_id"
    t.string  "color"
    t.string  "size"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
  end

end
