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

ActiveRecord::Schema.define(version: 20171101150735) do

  create_table "cart_products", force: :cascade do |t|
    t.integer  "cart_id"
    t.integer  "product_id"
    t.integer  "product_quantity"
    t.integer  "license_id"
    t.integer  "order_id"
    t.float    "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["cart_id"], name: "index_cart_products_on_cart_id"
    t.index ["license_id"], name: "index_cart_products_on_license_id"
    t.index ["order_id"], name: "index_cart_products_on_order_id"
    t.index ["product_id"], name: "index_cart_products_on_product_id"
  end

  create_table "carts", force: :cascade do |t|
    t.string   "guest_token"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "email_templates", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "subject"
    t.text     "content"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "images", force: :cascade do |t|
    t.text     "url"
    t.string   "type"
    t.integer  "product_id"
    t.text     "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_images_on_product_id"
  end

  create_table "licenses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "guest_token"
    t.float    "total_amount"
    t.text     "status"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string   "method"
    t.string   "status"
    t.string   "trans_id"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "long_description"
    t.float    "price"
    t.float    "commision"
    t.string   "status"
    t.integer  "created_by"
    t.boolean  "is_deleted"
    t.boolean  "is_active"
    t.string   "sku"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "preview_url"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "stars"
    t.text     "comment"
    t.boolean  "is_deleted"
    t.integer  "product_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_ratings_on_product_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
