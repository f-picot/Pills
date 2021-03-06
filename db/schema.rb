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

ActiveRecord::Schema.define(version: 20170606163745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_items", force: :cascade do |t|
    t.integer  "pill_id"
    t.integer  "cart_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "quantity",   default: 0
    t.index ["cart_id"], name: "index_cart_items_on_cart_id", using: :btree
    t.index ["pill_id"], name: "index_cart_items_on_pill_id", using: :btree
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.datetime "delivery_time"
    t.string   "delivery_location"
    t.float    "latitude"
    t.float    "longitude"
    t.decimal  "delivery_price",    default: "0.0"
    t.integer  "price_cents",       default: 0,         null: false
    t.string   "status",            default: "pending"
    t.index ["user_id"], name: "index_carts_on_user_id", using: :btree
  end

  create_table "pills", force: :cascade do |t|
    t.string   "name"
    t.string   "brand"
    t.text     "description"
    t.decimal  "price"
    t.string   "category"
    t.integer  "stock"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "photo"
    t.string   "brandphoto"
    t.string   "capacity"
    t.integer  "price_cents", default: 0, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "cart_items", "carts"
  add_foreign_key "cart_items", "pills"
  add_foreign_key "carts", "users"
end
