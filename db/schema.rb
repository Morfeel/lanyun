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

ActiveRecord::Schema.define(version: 20160501065639) do

  create_table "bed_profiles", force: :cascade do |t|
    t.string   "name",       limit: 255, default: "unknow", null: false
    t.integer  "capacity",   limit: 4,   default: 1,        null: false
    t.integer  "length",     limit: 4,   default: 1880,     null: false
    t.integer  "width",      limit: 4,   default: 915,      null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "beds", force: :cascade do |t|
    t.integer  "bed_profiles_id", limit: 4, null: false
    t.integer  "rooms_id",        limit: 4, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "beds", ["bed_profiles_id"], name: "index_beds_on_bed_profiles_id", using: :btree
  add_index "beds", ["rooms_id"], name: "index_beds_on_rooms_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.string   "status",     limit: 255, default: "booked", null: false
    t.integer  "user_id",    limit: 4,                      null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "reservations_rooms", id: false, force: :cascade do |t|
    t.integer "reservations_id", limit: 4, null: false
    t.integer "rooms_id",        limit: 4, null: false
  end

  add_index "reservations_rooms", ["reservations_id"], name: "index_reservations_rooms_on_reservations_id", using: :btree
  add_index "reservations_rooms", ["rooms_id"], name: "index_reservations_rooms_on_rooms_id", using: :btree

  create_table "room_bed_profiles", force: :cascade do |t|
    t.integer  "room_profile_id", limit: 4, null: false
    t.integer  "bed_profile_id",  limit: 4, null: false
    t.integer  "qty",             limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "room_bed_profiles", ["bed_profile_id"], name: "index_room_bed_profiles_on_bed_profile_id", using: :btree
  add_index "room_bed_profiles", ["room_profile_id"], name: "index_room_bed_profiles_on_room_profile_id", using: :btree

  create_table "room_profiles", force: :cascade do |t|
    t.string   "name",       limit: 255,                         default: "unknown", null: false
    t.integer  "capacity",   limit: 4,                           default: 1,         null: false
    t.integer  "bed_count",  limit: 4,                           default: 1,         null: false
    t.decimal  "price",                  precision: 6, scale: 2, default: 100.0,     null: false
    t.datetime "created_at",                                                         null: false
    t.datetime "updated_at",                                                         null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "room_profiles_id", limit: 4, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "rooms", ["room_profiles_id"], name: "index_rooms_on_room_profiles_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",                   null: false
    t.string   "encrypted_password",     limit: 255, default: "",                   null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,                    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        limit: 4,   default: 0,                    null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.string   "id_number",              limit: 255, default: "000000000000000000", null: false
    t.string   "given_name",             limit: 255, default: "Joe",                null: false
    t.string   "family_name",            limit: 255, default: "Doe",                null: false
    t.string   "id_photocopy",           limit: 255
    t.string   "contact_number",         limit: 255, default: "13000000000",        null: false
    t.string   "gender",                 limit: 255, default: "male",               null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
