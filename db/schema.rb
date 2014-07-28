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

ActiveRecord::Schema.define(version: 20140728165656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: true do |t|
    t.text     "name",                               null: false
    t.decimal  "price",      precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_items", force: true do |t|
    t.text     "name",                                null: false
    t.text     "image_url"
    t.decimal  "price",       precision: 8, scale: 2
    t.text     "description"
    t.boolean  "is_bulk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", force: true do |t|
    t.boolean  "is_addon"
    t.integer  "menu_item_id"
    t.integer  "ingredient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "options", ["ingredient_id"], name: "index_options_on_ingredient_id", using: :btree
  add_index "options", ["menu_item_id"], name: "index_options_on_menu_item_id", using: :btree

  create_table "order_items", force: true do |t|
    t.decimal  "price",        precision: 8, scale: 2
    t.integer  "menu_item_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_items", ["menu_item_id"], name: "index_order_items_on_menu_item_id", using: :btree

  create_table "selections", force: true do |t|
    t.integer  "order_item_id"
    t.integer  "option_id"
    t.boolean  "is_selected"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "selections", ["option_id"], name: "index_selections_on_option_id", using: :btree
  add_index "selections", ["order_item_id"], name: "index_selections_on_order_item_id", using: :btree

end
