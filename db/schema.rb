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

ActiveRecord::Schema.define(version: 20180416111151) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "event_type"
    t.integer  "patient_id"
    t.time     "start_time"
    t.integer  "duration"
    t.float    "calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_events_on_patient_id"
  end

  create_table "heartrates", force: :cascade do |t|
    t.datetime     "time"
    t.float    "value"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_heartrates_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.date     "dob"
    t.string   "provider"
    t.integer  "provider_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
