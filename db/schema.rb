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

ActiveRecord::Schema.define(version: 20140325221929) do

  create_table "claims", force: true do |t|
    t.string   "title"
    t.string   "claim_id"
    t.string   "ytube_id"
    t.string   "producer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "producer_id"
  end

  create_table "producers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.string   "twitter"
    t.boolean  "collab"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.string   "month"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "title"
    t.string   "ytube_id"
    t.string   "revenue"
    t.string   "report"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "views"
    t.boolean  "dead"
  end

end
