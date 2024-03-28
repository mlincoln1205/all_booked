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

ActiveRecord::Schema[7.0].define(version: 2024_03_21_160635) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "guests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "checkin_at", null: false
    t.datetime "checkout_at", null: false
    t.integer "reservation_status", default: 0, null: false
    t.string "room_id", null: false
    t.string "guest_id", null: false
    t.string "user_id", null: false
    t.string "book_code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number", null: false
    t.integer "room_type", default: 0, null: false
    t.integer "room_status", default: 0, null: false
    t.integer "capacity", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
