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

ActiveRecord::Schema.define(version: 20170430210153) do

  create_table "settings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "widget1_id"
    t.integer  "widget2_id"
    t.integer  "widget3_id"
    t.integer  "widget4_id"
    t.integer  "widget5_id"
    t.integer  "widget6_id"
    t.integer  "layout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string   "colour"
    t.string   "font"
    t.string   "background"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string   "user_name"
    t.string   "text"
    t.string   "avatar"
    t.string   "handle"
    t.boolean  "possibly_sensitive"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "user_widget_settings", force: :cascade do |t|
    t.string   "user_id"
    t.string   "youtube_url"
    t.string   "twitter_username"
    t.string   "twitter_password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_widgets", force: :cascade do |t|
    t.string   "user_id"
    t.string   "widget_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "theme_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "data_url"
    t.string   "data_source"
    t.string   "name"
    t.string   "size"
    t.text     "data_string"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
