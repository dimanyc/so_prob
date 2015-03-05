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

ActiveRecord::Schema.define(version: 20150305004046) do

  create_table "days", force: true do |t|
    t.string   "name"
    t.boolean  "missed"
    t.integer  "habit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "habits", force: true do |t|
    t.string   "name"
    t.integer  "missed",     default: 0
    t.integer  "level"
    t.integer  "strikes",    default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "days_count", default: 5
  end

  create_table "levels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "day_id"
    t.integer  "habit_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "strikes"
    t.integer  "level",      default: 0
    t.integer  "streaks",    default: 0
  end

end
