# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_231_211_034_945) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'clients', force: :cascade do |t|
    t.string 'name'
    t.string 'region'
    t.string 'phone'
    t.string 'address'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'deliveries', force: :cascade do |t|
    t.bigint 'preorder_id', null: false
    t.bigint 'truck_id', null: false
    t.bigint 'distance'
    t.string 'delivery_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['preorder_id'], name: 'index_deliveries_on_preorder_id'
    t.index ['truck_id'], name: 'index_deliveries_on_truck_id'
  end

  create_table 'preorder_items', force: :cascade do |t|
    t.bigint 'preorder_id', null: false
    t.bigint 'stock_id', null: false
    t.bigint 'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['preorder_id'], name: 'index_preorder_items_on_preorder_id'
    t.index ['stock_id'], name: 'index_preorder_items_on_stock_id'
  end

  create_table 'preorders', force: :cascade do |t|
    t.bigint 'client_id', null: false
    t.integer 'quantity'
    t.string 'order_date'
    t.string 'order_status'
    t.bigint 'total'
    t.boolean 'permission'
    t.bigint 'user_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['client_id'], name: 'index_preorders_on_client_id'
    t.index ['user_id'], name: 'index_preorders_on_user_id'
  end

  create_table 'restock_details', force: :cascade do |t|
    t.integer 'quantity'
    t.string 'expiry_date'
    t.bigint 'restock_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'stock_id', null: false
    t.index ['restock_id'], name: 'index_restock_details_on_restock_id'
    t.index ['stock_id'], name: 'index_restock_details_on_stock_id'
  end

  create_table 'restocks', force: :cascade do |t|
    t.string 'restock_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  

  create_table 'stock_details', force: :cascade do |t|
    t.bigint 'restock_id', null: false
    t.integer 'quantity'
    t.string 'expiry_date'
    t.bigint 'stock_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['restock_id'], name: 'index_stock_details_on_restock_id'
    t.index ['stock_id'], name: 'index_stock_details_on_stock_id'
  end

  create_table 'stocks', force: :cascade do |t|
    t.string 'name'
    t.integer 'quantity'
    t.bigint 'unit_price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'trucks', force: :cascade do |t|
    t.string 'license'
    t.string 'driver'
    t.integer 'capacity'
    t.boolean 'available'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'current_capacity'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'name'
    t.string 'jti', null: false
    t.string 'department', default: 'sale'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['jti'], name: 'index_users_on_jti', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'deliveries', 'preorders'
  add_foreign_key 'deliveries', 'trucks'
  add_foreign_key 'preorder_items', 'preorders'
  add_foreign_key 'preorder_items', 'stocks'
  add_foreign_key 'preorders', 'clients'
  add_foreign_key 'preorders', 'users'
  add_foreign_key 'restock_details', 'restocks'
  add_foreign_key 'restock_details', 'stocks'
  add_foreign_key 'stock_details', 'restocks'
  add_foreign_key 'stock_details', 'stocks'
end
