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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130904220521) do

  create_table "committees", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
  end

  add_index "committees", ["slug"], :name => "index_committees_on_slug"

  create_table "event_states", :force => true do |t|
    t.string   "name"
    t.integer  "name_order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start_date"
    t.string   "start_time"
    t.date     "end_date"
    t.string   "end_time"
    t.boolean  "featured"
    t.boolean  "sold_out"
    t.string   "cost_member"
    t.string   "cost_young_alumn"
    t.string   "cost_guest"
    t.string   "capacity"
    t.string   "organizer"
    t.string   "organizer_email"
    t.integer  "committee_id"
    t.integer  "image_id"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "event_state_id",   :default => 2
    t.string   "registration_url"
    t.integer  "created_by"
    t.integer  "last_updated_by"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "slug"
  end

  add_index "events", ["slug"], :name => "index_events_on_slug"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "remember_token"
    t.boolean  "admin",                  :default => false
    t.string   "position"
    t.integer  "committee_id"
    t.string   "state"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
