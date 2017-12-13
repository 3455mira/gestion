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

ActiveRecord::Schema.define(version: 20171211004951) do

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "color_g"
    t.string "image_g"
    t.binary "image_binary"
    t.string "image_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "icons", force: :cascade do |t|
    t.string "name_icon"
    t.string "image_icon"
    t.binary "image_binary"
    t.string "image_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string "account"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sche_ts", force: :cascade do |t|
    t.datetime "schedule_at"
    t.string "name_sche"
    t.integer "sche_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sches", force: :cascade do |t|
    t.datetime "schedule_at"
    t.string "name_sche"
    t.integer "icon_id"
    t.datetime "notification_time"
    t.boolean "snooze"
    t.string "place"
    t.text "memo_sche"
    t.boolean "mail_sche"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "notification_sche"
    t.integer "user_id"
  end

  create_table "syoji_ts", force: :cascade do |t|
    t.date "release"
    t.string "title"
    t.string "artist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "syojis", force: :cascade do |t|
    t.string "title_syo"
    t.string "artist"
    t.integer "color_id"
    t.string "title_j"
    t.date "release"
    t.string "image_syo"
    t.binary "image_binary"
    t.string "image_type"
    t.text "memo_syo"
    t.string "url_syo"
    t.boolean "notification_syo"
    t.boolean "mail_syo"
    t.datetime "notification_time"
    t.boolean "snooze"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "have"
  end

  create_table "users", force: :cascade do |t|
    t.string "name_user"
    t.string "mail_user"
    t.string "pass_user"
    t.string "icon_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.binary "image_binary"
    t.string "image_type"
  end

end
