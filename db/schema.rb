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

ActiveRecord::Schema.define(version: 20150519092811) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.date     "publication_date"
    t.string   "publication"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "tier"
    t.float    "area"
    t.string   "rank"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.float    "longitude"
    t.float    "lattitude"
    t.string   "image_tag",  default: ""
  end

  create_table "developers", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.boolean  "listed"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_tag",  default: ""
  end

  create_table "districts", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.integer  "population"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "gfa"
    t.float    "longitude"
    t.float    "lattitude"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "developer_id"
    t.float    "turnover"
    t.integer  "city_id"
    t.boolean  "existing"
    t.integer  "parking"
    t.text     "tenants",      default: ""
    t.string   "address",      default: ""
    t.integer  "district_id"
    t.string   "image_tag",    default: ""
  end

  create_table "realestate", force: :cascade do |t|
    t.integer  "city_id"
    t.date     "timeperiod"
    t.integer  "new_constructed_residential"
    t.integer  "secondary_residential"
    t.integer  "re_investment_residential"
    t.integer  "re_investment_commercial"
    t.integer  "floor_space_started_residential"
    t.integer  "floor_space_started_commercial"
    t.integer  "floor_space_under_construction_residential"
    t.integer  "floor_space_under_construction_commercial"
    t.integer  "floor_space_completed_residential"
    t.integer  "floor_space_completed_commercial"
    t.integer  "floor_space_sold_residential"
    t.integer  "floor_space_sold_commercial"
    t.integer  "building_sold_residential"
    t.integer  "building_sold_commercial"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
