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

ActiveRecord::Schema.define(version: 20160429233254) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternatives", force: :cascade do |t|
    t.string   "description"
    t.integer  "weight"
    t.integer  "kind_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "alternatives_questions", id: false, force: :cascade do |t|
    t.integer "question_id",    null: false
    t.integer "alternative_id", null: false
  end

  add_index "alternatives_questions", ["alternative_id", "question_id"], name: "index_alternatives_questions_on_alternative_id_and_question_id", using: :btree
  add_index "alternatives_questions", ["question_id", "alternative_id"], name: "index_alternatives_questions_on_question_id_and_alternative_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
  end

  create_table "diagnostics", force: :cascade do |t|
    t.text     "description"
    t.integer  "score"
    t.integer  "evaluation_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.datetime "date_evaluation"
    t.boolean  "status"
    t.integer  "user_id"
    t.integer  "device_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "evaluations_questions", force: :cascade do |t|
    t.integer  "evalution_id"
    t.integer  "question_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "evalutions_questions", id: false, force: :cascade do |t|
    t.integer "evalution_id", null: false
    t.integer "question_id",  null: false
  end

  add_index "evalutions_questions", ["evalution_id", "question_id"], name: "index_evalutions_questions_on_evalution_id_and_question_id", using: :btree
  add_index "evalutions_questions", ["question_id", "evalution_id"], name: "index_evalutions_questions_on_question_id_and_evalution_id", using: :btree

  create_table "kinds", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "marks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "enunciation"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
