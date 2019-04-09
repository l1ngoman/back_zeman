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

ActiveRecord::Schema.define(version: 2019_04_09_062144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_accounts", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "vendor_id"
    t.integer "account_number"
    t.string "terms"
    t.string "price_level"
    t.string "freight_terms"
    t.text "notes"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_accounts_on_customer_id"
    t.index ["vendor_id"], name: "index_customer_accounts_on_vendor_id"
  end

  create_table "customer_locations", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "phone"
    t.text "notes"
    t.boolean "primary_billing"
    t.boolean "primary_shipping"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_locations_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "phone_1"
    t.string "phone_2"
    t.string "email"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.bigint "vendor_id"
    t.string "part_no"
    t.string "name"
    t.string "description"
    t.text "notes"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendor_id"], name: "index_items_on_vendor_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id"
    t.string "item_name"
    t.string "part_no"
    t.string "ship_from"
    t.datetime "ship_date"
    t.float "cost"
    t.string "confirmation"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "customer_account_id"
    t.string "method"
    t.string "bill_to"
    t.string "ship_to"
    t.string "vendor_contact"
    t.string "order_taken_username"
    t.datetime "order_taken_timestamp"
    t.string "order_placed_username"
    t.string "order_placed_timestamp"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_account_id"], name: "index_orders_on_customer_account_id"
  end

  create_table "prices", force: :cascade do |t|
    t.bigint "item_id"
    t.float "tier_1"
    t.float "tier_2"
    t.float "tier_3"
    t.float "tier_4"
    t.float "zeman"
    t.float "map"
    t.float "msrp"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_prices_on_item_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendor_contacts", force: :cascade do |t|
    t.bigint "vendor_id"
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "phone"
    t.string "email"
    t.text "notes"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendor_id"], name: "index_vendor_contacts_on_vendor_id"
  end

  create_table "vendor_locations", force: :cascade do |t|
    t.bigint "vendor_id"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.text "notes"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendor_id"], name: "index_vendor_locations_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "website"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "hours"
    t.text "notes"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customer_accounts", "customers"
  add_foreign_key "customer_accounts", "vendors"
  add_foreign_key "customer_locations", "customers"
  add_foreign_key "items", "vendors"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "customer_accounts"
  add_foreign_key "prices", "items"
  add_foreign_key "vendor_contacts", "vendors"
  add_foreign_key "vendor_locations", "vendors"
end
