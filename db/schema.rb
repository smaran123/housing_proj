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

ActiveRecord::Schema.define(version: 20150714180924) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "contact_us", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.string   "subject",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "property_id",        limit: 4
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "type_of_land",          limit: 255
    t.string   "title",                 limit: 255
    t.decimal  "price",                               precision: 10
    t.decimal  "rate",                                precision: 10
    t.decimal  "area",                                precision: 10
    t.string   "person_type",           limit: 255
    t.string   "city",                  limit: 255
    t.string   "location",              limit: 255
    t.text     "description",           limit: 65535
    t.string   "name",                  limit: 255
    t.string   "email",                 limit: 255
    t.string   "mobile",                limit: 255
    t.string   "state",                 limit: 255
    t.string   "land_status",           limit: 255
    t.string   "image_file_name",       limit: 255
    t.string   "image_content_type",    limit: 255
    t.integer  "image_file_size",       limit: 4
    t.datetime "image_updated_at"
    t.string   "present_land_status",   limit: 255
    t.string   "electricity_type",      limit: 255
    t.integer  "contact_count",         limit: 4
    t.integer  "view_count",            limit: 4
    t.float    "latitude",              limit: 24
    t.float    "longitude",             limit: 24
    t.boolean  "gmaps"
    t.string   "document_file_name",    limit: 255
    t.string   "document_content_type", limit: 255
    t.integer  "document_file_size",    limit: 4
    t.datetime "document_updated_at"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "unit",                  limit: 255
  end

end
