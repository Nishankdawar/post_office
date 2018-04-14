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

ActiveRecord::Schema.define(version: 20180413185228) do

  create_table "customers", force: :cascade do |t|
    t.integer  "cid"
    t.string   "cname"
    t.string   "address"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "money_exchanges", force: :cascade do |t|
    t.integer  "cid"
    t.integer  "passid"
    t.string   "metype"
    t.string   "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poboxes", force: :cascade do |t|
    t.integer  "cid"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_types", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "ptype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postoffice_staffs", force: :cascade do |t|
    t.integer  "sid"
    t.integer  "post_id"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postoffices", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "po_type"
  end

  create_table "service_payments", force: :cascade do |t|
    t.string   "billno"
    t.date     "date"
    t.string   "amount"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_do_moneys", force: :cascade do |t|
    t.integer  "passid"
    t.integer  "sid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_do_services", force: :cascade do |t|
    t.string   "billno"
    t.integer  "sid"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "sname"
    t.integer  "sid"
    t.string   "designation"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "telephones", force: :cascade do |t|
    t.integer  "sid"
    t.integer  "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
