# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_08_13_065346) do
  create_table "fountains", force: :cascade do |t|
    t.integer "open_data_identifier"
    t.boolean "working"
    t.string "street_number"
    t.string "street_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "neighborhood_id", null: false
    t.string "model"
    t.string "name"
    t.string "neighborhood_number"
    t.float "longitude"
    t.float "latitude"
    t.index ["neighborhood_id"], name: "index_fountains_on_neighborhood_id"
  end

  create_table "fresh_places", force: :cascade do |t|
    t.string "name"
    t.integer "neighborhood_number"
    t.string "street_address"
    t.string "open_data_identifier"
    t.boolean "free"
    t.integer "place_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.integer "neighborhood_id", null: false
    t.float "longitude"
    t.float "latitude"
    t.index ["neighborhood_id"], name: "index_fresh_places_on_neighborhood_id"
  end

  create_table "green_spaces", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "neighborhood_number"
    t.integer "neighborhood_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhood_id"], name: "index_green_spaces_on_neighborhood_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ign_map"
  end

  add_foreign_key "fountains", "neighborhoods"
  add_foreign_key "fresh_places", "neighborhoods"
  add_foreign_key "green_spaces", "neighborhoods"
end
