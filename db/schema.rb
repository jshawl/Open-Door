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

ActiveRecord::Schema.define(version: 20151118205230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "postings", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "timeframe"
    t.string   "pay"
    t.integer  "provider_id" # how could you let seekers post, too?
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  # a next feature could be allowing both providers and seekers to
  # comment on posts or message each other

  add_index "postings", ["provider_id"], name: "index_postings_on_provider_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string  "organization_name"
    t.string  "POC_first_name"
    t.string  "POC_last_name"
    t.string  "photo_url"
    t.string  "city"
    t.string  "email"
    t.string  "phone_number"
    t.text    "bio"
    t.integer "user_id"
  end

  create_table "seekers", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "gender"
    t.string  "photo_url"
    t.string  "city"
    t.string  "email"
    t.string  "phone_number"
    t.text    "bio"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "postings", "providers"
end
