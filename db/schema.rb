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

ActiveRecord::Schema.define(version: 20170923175909) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "target_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "profile_image_file_name"
    t.string "name"
    t.date "birthday"
    t.integer "gender"
    t.string "college"
    t.integer "prefecture"
    t.string "mail_address"
    t.integer "kind"
    t.string "wants"
    t.string "wants_text"
    t.string "work_image1_filename"
    t.string "work_image2_filename"
    t.string "work_image3_filename"
    t.string "work_text1_title"
    t.string "work_text2_title"
    t.string "work_text3_title"
    t.string "work_text1_detail"
    t.string "work_text2_detail"
    t.string "work_text3_detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
