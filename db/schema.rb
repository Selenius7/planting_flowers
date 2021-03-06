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

ActiveRecord::Schema.define(version: 20170607213422) do

  create_table "clients", force: :cascade do |t|
    t.string  "first_name", limit: 10
    t.string  "last_name",  limit: 10
    t.string  "phone",      limit: 255
    t.integer "note_id",    limit: 4
  end

  add_index "clients", ["note_id"], name: "index_clients_on_note_id", using: :btree

  create_table "cultures", force: :cascade do |t|
    t.string  "name",    limit: 10
    t.integer "note_id", limit: 4
  end

  add_index "cultures", ["note_id"], name: "index_cultures_on_note_id", using: :btree

  create_table "deeds", force: :cascade do |t|
    t.string  "name", limit: 20
    t.integer "cost", limit: 4,  default: 0, null: false
  end

  create_table "elevations", force: :cascade do |t|
    t.integer "deed_id",        limit: 4
    t.integer "flower_id",      limit: 4
    t.date    "elevation_data"
    t.string  "comment",        limit: 200
    t.integer "note_id",        limit: 4
  end

  add_index "elevations", ["deed_id"], name: "index_elevations_on_deed_id", using: :btree
  add_index "elevations", ["flower_id"], name: "index_elevations_on_flower_id", using: :btree
  add_index "elevations", ["note_id"], name: "index_elevations_on_note_id", using: :btree

  create_table "flowers", force: :cascade do |t|
    t.string  "f_name",        limit: 20
    t.integer "culture_id",    limit: 4
    t.integer "cost",          limit: 4
    t.integer "garden_bed_id", limit: 4
    t.date    "planting_date"
    t.integer "note_id",       limit: 4
  end

  add_index "flowers", ["note_id"], name: "index_flowers_on_note_id", using: :btree

  create_table "garden_beds", force: :cascade do |t|
    t.integer "num",     limit: 4
    t.string  "comment", limit: 200
    t.integer "note_id", limit: 4
  end

  add_index "garden_beds", ["note_id"], name: "index_garden_beds_on_note_id", using: :btree

  create_table "notes", force: :cascade do |t|
    t.date     "data_of_the_result"
    t.text     "note",               limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date    "date"
    t.integer "cost",      limit: 4
    t.integer "flower_id", limit: 4
    t.integer "client_id", limit: 4
    t.integer "note_id",   limit: 4
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id", using: :btree
  add_index "orders", ["flower_id"], name: "index_orders_on_flower_id", using: :btree
  add_index "orders", ["note_id"], name: "index_orders_on_note_id", using: :btree

  create_table "results", force: :cascade do |t|
    t.integer "flower_id",   limit: 4
    t.date    "result_date"
    t.string  "comment",     limit: 200
  end

  add_index "results", ["flower_id"], name: "index_results_on_flower_id", using: :btree

  add_foreign_key "clients", "notes"
  add_foreign_key "cultures", "notes"
  add_foreign_key "elevations", "deeds"
  add_foreign_key "elevations", "flowers"
  add_foreign_key "elevations", "notes"
  add_foreign_key "flowers", "notes"
  add_foreign_key "garden_beds", "notes"
  add_foreign_key "orders", "clients"
  add_foreign_key "orders", "flowers"
  add_foreign_key "orders", "notes"
  add_foreign_key "results", "flowers"
end
