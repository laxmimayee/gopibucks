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

ActiveRecord::Schema.define(version: 20140215082153) do

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producer_profiles", force: true do |t|
    t.string   "Street"
    t.string   "HomeTown"
    t.string   "StateProvince"
    t.integer  "Zipcode"
    t.text     "About"
    t.string   "Artist_blog"
    t.string   "Facebook"
    t.string   "Twitter"
    t.string   "MySpace"
    t.string   "Soundcloud"
    t.string   "GooglePlus"
    t.string   "YouTube"
    t.string   "Soundclick"
    t.string   "Instagram"
    t.integer  "users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pimage_file_name"
    t.string   "pimage_content_type"
    t.integer  "pimage_file_size"
    t.datetime "pimage_updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.string   "iso"
    t.integer  "country_id"
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "Firstname"
    t.string   "Lastname"
    t.string   "Country"
    t.string   "Role"
    t.string   "Howdouknow"
    t.boolean  "Terms"
    t.string   "provider"
    t.string   "uid"
    t.string   "confirmation_token"
    t.string   "unconfirmed_email"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "ArtistName"
    t.string   "Street"
    t.string   "HomeTown"
    t.string   "StageName"
    t.string   "StateProvince"
    t.integer  "Zipcode"
    t.text     "About"
    t.string   "Artist_blog"
    t.string   "Facebook"
    t.string   "Twitter"
    t.string   "MySpace"
    t.string   "Soundcloud"
    t.string   "GooglePlus"
    t.string   "YouTube"
    t.string   "Soundclick"
    t.string   "Instagram"
    t.string   "pimage_file_name"
    t.string   "pimage_content_type"
    t.integer  "pimage_file_size"
    t.datetime "pimage_updated_at"
    t.string   "country_code"
    t.string   "state_code"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
