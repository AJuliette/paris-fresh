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

ActiveRecord::Schema[7.1].define(version: 2024_08_04_193528) do
  create_table "fountains", force: :cascade do |t|
    t.integer "open_data_identifier"
    t.boolean "working"
    t.string "street_number"
    t.string "street_name"
    t.string "neighborhood"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fresh_places", force: :cascade do |t|
    t.string "name"
    t.integer "neighborhood"
    t.string "street_address"
    t.integer "open_data_identifier"
    t.boolean "free"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
