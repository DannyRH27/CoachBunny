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

ActiveRecord::Schema.define(version: 2020_07_23_004711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorizations", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.integer "user_id"
    t.string "token"
    t.string "secret"
    t.string "name"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coach_details", force: :cascade do |t|
    t.integer "coach_id", null: false
    t.integer "sport_id", null: false
    t.integer "duration", null: false
    t.boolean "elite_coach", default: false, null: false
    t.boolean "equipment", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "coaching_rate"
    t.text "session_description"
    t.index ["coach_id", "sport_id"], name: "index_coach_details_on_coach_id_and_sport_id", unique: true
    t.index ["coach_id"], name: "index_coach_details_on_coach_id"
    t.index ["coaching_rate"], name: "index_coach_details_on_coaching_rate"
    t.index ["duration"], name: "index_coach_details_on_duration"
    t.index ["elite_coach"], name: "index_coach_details_on_elite_coach"
    t.index ["sport_id"], name: "index_coach_details_on_sport_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "image_url"
    t.string "zip_code", null: false
    t.text "coach_description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coaching_sessions", force: :cascade do |t|
    t.integer "sport_id", null: false
    t.integer "coach_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "training_date", null: false
    t.integer "training_duration", null: false
    t.text "training_description", null: false
    t.integer "training_rate"
    t.index ["coach_id"], name: "index_coaching_sessions_on_coach_id"
    t.index ["sport_id"], name: "index_coaching_sessions_on_sport_id"
    t.index ["user_id"], name: "index_coaching_sessions_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "body", null: false
    t.integer "rating", null: false
    t.integer "user_id", null: false
    t.integer "sport_id", null: false
    t.integer "coach_id", null: false
    t.integer "coaching_session_id"
    t.index ["coach_id"], name: "index_reviews_on_coach_id"
    t.index ["coaching_session_id"], name: "index_reviews_on_coaching_session_id"
    t.index ["sport_id"], name: "index_reviews_on_sport_id"
    t.index ["user_id", "coaching_session_id"], name: "index_reviews_on_user_id_and_coaching_session_id", unique: true
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "sport", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport"], name: "index_sports_on_sport"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.string "email", null: false
    t.string "image_url"
    t.string "zip_code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end
