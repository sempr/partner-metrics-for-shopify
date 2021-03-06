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

ActiveRecord::Schema.define(version: 20171002081526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "metrics", force: true do |t|
    t.date     "metric_date"
    t.text     "charge_type"
    t.text     "app_title"
    t.decimal  "revenue",                    precision: 10, scale: 2
    t.integer  "number_of_charges"
    t.integer  "number_of_shops"
    t.integer  "repeat_customers"
    t.decimal  "repeat_vs_new_customers",    precision: 10, scale: 2
    t.decimal  "average_revenue_per_shop",   precision: 10, scale: 2
    t.decimal  "average_revenue_per_charge", precision: 10, scale: 2
    t.decimal  "shop_churn",                 precision: 10, scale: 2
    t.decimal  "revenue_churn",              precision: 10, scale: 2
    t.decimal  "lifetime_value",             precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "metrics", ["metric_date", "charge_type"], name: "metrics_date_and_charge_type_index", using: :btree

  create_table "payment_histories", force: true do |t|
    t.date     "payment_date"
    t.text     "charge_type"
    t.text     "app_title"
    t.text     "shop"
    t.decimal  "revenue",      precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shop_country"
  end

  add_index "payment_histories", ["payment_date", "charge_type"], name: "payment_histories_date_and_charge_type_index", using: :btree

end
