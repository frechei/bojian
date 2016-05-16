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

ActiveRecord::Schema.define(version: 20160515044705) do

  create_table "feedbacks", force: :cascade do |t|
    t.string   "invite_time"
    t.string   "status"
    t.string   "person_in_charge"
    t.integer  "potentional_member_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "feedbacks", ["potentional_member_id"], name: "index_feedbacks_on_potentional_member_id"

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "address"
    t.string   "parent"
    t.string   "phone"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "card_category"
    t.string   "sword"
    t.string   "national_record"
    t.string   "provincial_record"
    t.boolean  "stop_status"
    t.string   "stop_reason"
    t.boolean  "active"
    t.string   "not_active_reason"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "potentional_members", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "phone"
    t.string   "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
