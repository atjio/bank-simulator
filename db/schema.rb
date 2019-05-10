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

ActiveRecord::Schema.define(version: 2019_05_10_151425) do

  create_table "banks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "symbol"
    t.index ["name"], name: "index_currencies_on_name"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "price"
    t.integer "currency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_products_on_currency_id"
  end

  create_table "transfers", force: :cascade do |t|
    t.string "user_account"
    t.integer "virtual_account_id"
    t.integer "amount"
    t.integer "currencies_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currencies_id"], name: "index_transfers_on_currencies_id"
    t.index ["virtual_account_id"], name: "index_transfers_on_virtual_account_id"
  end

  create_table "user_accounts", force: :cascade do |t|
    t.integer "user_id"
    t.string "xfers_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_accounts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_salt"
    t.string "password_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "xfers_api_key"
  end

  create_table "virtual_accounts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "bank_id"
    t.string "account_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_id"], name: "index_virtual_accounts_on_bank_id"
    t.index ["user_id"], name: "index_virtual_accounts_on_user_id"
  end

end
