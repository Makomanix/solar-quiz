# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_13_210223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leaderboards", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_leaderboards_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "query"
    t.string "answer"
    t.string "incorrect1"
    t.string "incorrect2"
    t.string "incorrect3"
    t.string "difficulty"
    t.string "hint"
    t.bigint "solar_object_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["solar_object_id"], name: "index_questions_on_solar_object_id"
  end

  create_table "solar_objects", force: :cascade do |t|
    t.string "name"
    t.boolean "isPlanet"
    t.boolean "isMoon"
    t.boolean "isOther"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_questions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "question_id", null: false
    t.boolean "correctness"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_user_questions_on_question_id"
    t.index ["user_id"], name: "index_user_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "current_score"
    t.integer "high_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "leaderboards", "users"
  add_foreign_key "questions", "solar_objects"
  add_foreign_key "user_questions", "questions"
  add_foreign_key "user_questions", "users"
end
