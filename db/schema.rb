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

ActiveRecord::Schema.define(version: 20150611183322) do

  create_table "branches", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "Location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "branches", ["Location_id"], name: "index_branches_on_Location_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "correlatives", force: true do |t|
    t.integer  "Branch_id"
    t.integer  "document_type_id"
    t.string   "series"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "correlatives", ["Branch_id"], name: "index_correlatives_on_Branch_id", using: :btree
  add_index "correlatives", ["document_type_id"], name: "index_correlatives_on_document_type_id", using: :btree

  create_table "customer_adresses", force: true do |t|
    t.integer  "Customer_id"
    t.string   "address"
    t.integer  "Location_id"
    t.string   "reference"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_adresses", ["Customer_id"], name: "index_customer_adresses_on_Customer_id", using: :btree
  add_index "customer_adresses", ["Location_id"], name: "index_customer_adresses_on_Location_id", using: :btree

  create_table "customers", force: true do |t|
    t.integer  "identity_type_id"
    t.string   "document_number"
    t.string   "first_last_name"
    t.string   "second_last_name"
    t.string   "name"
    t.string   "mail"
    t.integer  "sex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "customers", ["identity_type_id"], name: "index_customers_on_identity_type_id", using: :btree
  add_index "customers", ["sex_id"], name: "index_customers_on_sex_id", using: :btree

  create_table "document_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identity_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "installs", force: true do |t|
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
  end

  add_index "installs", ["email"], name: "index_installs_on_email", unique: true, using: :btree
  add_index "installs", ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true, using: :btree

  create_table "locations", force: true do |t|
    t.string   "ubi_codigo"
    t.string   "description"
    t.string   "department"
    t.string   "province"
    t.string   "distric"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", force: true do |t|
    t.integer  "Order_id"
    t.integer  "Product_id"
    t.integer  "quantity"
    t.decimal  "price",      precision: 10, scale: 0
    t.decimal  "partial",    precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_details", ["Order_id"], name: "index_order_details_on_Order_id", using: :btree
  add_index "order_details", ["Product_id"], name: "index_order_details_on_Product_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "Branch_id"
    t.integer  "Customer_id"
    t.date     "date_application"
    t.date     "delivery_date"
    t.time     "delivery_time"
    t.decimal  "total",            precision: 10, scale: 0
    t.string   "flag"
    t.string   "staff"
    t.integer  "Document_type_id"
    t.string   "series"
    t.date     "date_voucher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["Branch_id"], name: "index_orders_on_Branch_id", using: :btree
  add_index "orders", ["Customer_id"], name: "index_orders_on_Customer_id", using: :btree
  add_index "orders", ["Document_type_id"], name: "index_orders_on_Document_type_id", using: :btree

  create_table "products", force: true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "description"
    t.decimal  "price",       precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "sexes", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usercustomers", force: true do |t|
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
    t.integer  "identity_type_id"
    t.string   "document_number"
    t.string   "first_last_name"
    t.string   "second_last_name"
    t.string   "name"
    t.integer  "sex_id"
    t.string   "cell"
    t.datetime "dateofbirth"
  end

  add_index "usercustomers", ["email"], name: "index_usercustomers_on_email", unique: true, using: :btree
  add_index "usercustomers", ["identity_type_id"], name: "index_usercustomers_on_identity_type_id", using: :btree
  add_index "usercustomers", ["reset_password_token"], name: "index_usercustomers_on_reset_password_token", unique: true, using: :btree
  add_index "usercustomers", ["sex_id"], name: "index_usercustomers_on_sex_id", using: :btree

  create_table "users", force: true do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "week_programs", force: true do |t|
    t.date     "date"
    t.integer  "Branch_id"
    t.integer  "Product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "week_programs", ["Branch_id"], name: "index_week_programs_on_Branch_id", using: :btree
  add_index "week_programs", ["Product_id"], name: "index_week_programs_on_Product_id", using: :btree

end
