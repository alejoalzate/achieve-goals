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

ActiveRecord::Schema.define(version: 20131125064731) do

  create_table "commitments", force: true do |t|
    t.integer  "active_user_id"
    t.integer  "overseer_user_id"
    t.string   "description"
    t.datetime "date_made"
    t.datetime "date_end"
    t.string   "status"
    t.integer  "score_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
    t.string   "perception_active_comment"
    t.integer  "perception_active_score"
    t.string   "perception_supervisor_comment"
    t.integer  "perception_supervisor_score"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.integer  "rc_score"
    t.boolean  "admin"
    t.integer  "perception_score"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end