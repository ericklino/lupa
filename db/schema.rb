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

ActiveRecord::Schema.define(version: 20170518194347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "about_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
    t.index ["about_id"], name: "index_about_images_on_about_id", using: :btree
  end

  create_table "abouts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alternatives", force: :cascade do |t|
    t.string   "description"
    t.integer  "weight"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "type_alternative"
  end

  create_table "alternatives_questions", id: false, force: :cascade do |t|
    t.integer "question_id",    null: false
    t.integer "alternative_id", null: false
    t.index ["alternative_id", "question_id"], name: "index_alternatives_questions_on_alternative_id_and_question_id", using: :btree
    t.index ["question_id", "alternative_id"], name: "index_alternatives_questions_on_question_id_and_alternative_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string   "model_device"
    t.string   "processor"
    t.string   "os"
    t.string   "size_device"
    t.string   "type_device"
    t.string   "phone_img"
    t.integer  "mark_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["mark_id"], name: "index_devices_on_mark_id", using: :btree
  end

  create_table "diagnostics", force: :cascade do |t|
    t.text     "description"
    t.integer  "score"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "type_diagnostic"
    t.string   "name"
  end

  create_table "evaluations", force: :cascade do |t|
    t.datetime "date_evaluation"
    t.boolean  "status",               default: false
    t.integer  "user_id"
    t.integer  "device_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "score_usabilidade"
    t.integer  "score_acessibilidade"
    t.integer  "quiz_id"
    t.index ["device_id"], name: "index_evaluations_on_device_id", using: :btree
    t.index ["quiz_id"], name: "index_evaluations_on_quiz_id", using: :btree
    t.index ["user_id"], name: "index_evaluations_on_user_id", using: :btree
  end

  create_table "marks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "enunciation"
    t.integer  "type_question"
    t.integer  "category_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "quiz_id"
    t.index ["quiz_id"], name: "index_questions_on_quiz_id", using: :btree
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "title"
    t.integer  "type"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["key"], name: "idx_key", using: :btree
  end

  create_table "slides", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "about_images", "abouts"
  add_foreign_key "devices", "marks"
  add_foreign_key "evaluations", "devices"
  add_foreign_key "evaluations", "quizzes"
  add_foreign_key "evaluations", "users"
  add_foreign_key "questions", "quizzes"
end
