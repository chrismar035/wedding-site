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

ActiveRecord::Schema.define(:version => 20120714155815) do

  create_table "attendees", :force => true do |t|
    t.integer "invitation_id"
    t.string  "name"
    t.integer "meal_id"
    t.string  "note"
    t.integer "table_number"
  end

  create_table "budget_items", :force => true do |t|
    t.string  "type"
    t.decimal "units"
    t.decimal "rate"
    t.string  "title"
    t.date    "balance_due_on"
  end

  create_table "guests", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count"
    t.string   "friendly_name"
    t.boolean  "and_guest",     :default => false
  end

  create_table "invitations", :force => true do |t|
    t.integer  "guest_id"
    t.boolean  "attending",  :default => false
    t.string   "passcode"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "meals", :force => true do |t|
    t.string "title"
    t.string "description"
  end

  create_table "payments", :force => true do |t|
    t.decimal "amount",         :null => false
    t.integer "check_number"
    t.date    "paid_on"
    t.integer "budget_item_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
