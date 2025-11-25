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

ActiveRecord::Schema[8.0].define(version: 2025_11_25_001639) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "financial_events", force: :cascade do |t|
    t.decimal "amount", precision: 15, scale: 2
    t.string "description"
    t.datetime "occurred_at", null: false
    t.string "transaction_type", null: false
    t.string "created_by"
    t.bigint "household_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id"], name: "index_financial_events_on_household_id"
  end

  create_table "household_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "household_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id"], name: "index_household_users_on_household_id"
    t.index ["user_id", "household_id"], name: "index_household_users_on_user_id_and_household_id", unique: true
    t.index ["user_id"], name: "index_household_users_on_user_id"
  end

  create_table "households", force: :cascade do |t|
    t.string "main_user", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "financial_events", "households"
  add_foreign_key "household_users", "households"
  add_foreign_key "household_users", "users"
end
