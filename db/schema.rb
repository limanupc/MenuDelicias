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

ActiveRecord::Schema.define(version: 20150603203911) do

  create_table "branches", force: true do |t|
    t.string   "suc_nombre"
    t.string   "suc_direccion"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "branches", ["location_id"], name: "index_branches_on_location_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "cat_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "correlatives", force: true do |t|
    t.integer  "branch_id"
    t.integer  "document_type_id"
    t.string   "cor_serie"
    t.integer  "cor_numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "correlatives", ["branch_id"], name: "index_correlatives_on_branch_id", using: :btree
  add_index "correlatives", ["document_type_id"], name: "index_correlatives_on_document_type_id", using: :btree

  create_table "customer_addresses", force: true do |t|
    t.integer  "Customer_id"
    t.string   "clidir_direccion"
    t.integer  "Location_id"
    t.string   "clidir_referencia"
    t.string   "clidir_telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customer_addresses", ["Customer_id"], name: "index_customer_addresses_on_Customer_id", using: :btree
  add_index "customer_addresses", ["Location_id"], name: "index_customer_addresses_on_Location_id", using: :btree

  create_table "customers", force: true do |t|
    t.integer  "Identity_Type_id"
    t.string   "tipdocide_numero"
    t.string   "cli_appaterno"
    t.string   "cli_apmaterno"
    t.string   "cli_nombre"
    t.integer  "Sex_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["Identity_Type_id"], name: "index_customers_on_Identity_Type_id", using: :btree
  add_index "customers", ["Sex_id"], name: "index_customers_on_Sex_id", using: :btree

  create_table "document_types", force: true do |t|
    t.string   "tipdoc_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identity_types", force: true do |t|
    t.string   "tipdocide_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "ubi_codigo"
    t.string   "ubi_departamento"
    t.string   "ubi_provincia"
    t.string   "ubi_distrito"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_datails", force: true do |t|
    t.integer  "Order_id"
    t.integer  "Product_id"
    t.integer  "peddet_cantidad"
    t.decimal  "peddet_precio",    precision: 10, scale: 0
    t.decimal  "peddet_sub_total", precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_datails", ["Order_id"], name: "index_order_datails_on_Order_id", using: :btree
  add_index "order_datails", ["Product_id"], name: "index_order_datails_on_Product_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "Branch_id"
    t.integer  "Customer_id"
    t.date     "ped_fecha_solicitud"
    t.date     "ped_fecha_entrega"
    t.time     "ped_hora_entrega"
    t.decimal  "ped_total",             precision: 10, scale: 0
    t.integer  "ped_estado"
    t.integer  "perso_atendio"
    t.integer  "tipdoc_codigo"
    t.string   "cor_serie"
    t.date     "ped_fecha_comprobante"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["Branch_id"], name: "index_orders_on_Branch_id", using: :btree
  add_index "orders", ["Customer_id"], name: "index_orders_on_Customer_id", using: :btree

  create_table "products", force: true do |t|
    t.integer  "category_id"
    t.string   "pro_nombre"
    t.string   "pro_comentario"
    t.decimal  "pro_precio",     precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "sexes", force: true do |t|
    t.string   "sex_descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.date     "prosemmen_fecha"
    t.integer  "Branch_id"
    t.integer  "Product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "week_programs", ["Branch_id"], name: "index_week_programs_on_Branch_id", using: :btree
  add_index "week_programs", ["Product_id"], name: "index_week_programs_on_Product_id", using: :btree

end
