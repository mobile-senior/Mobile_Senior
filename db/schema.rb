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

ActiveRecord::Schema.define(version: 2019_02_25_055055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "generic_answers", force: :cascade do |t|
    t.text "statement"
    t.text "answer"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_generic_answers_on_user_id"
  end

  create_table "group_participations", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_participations_on_group_id"
    t.index ["user_id"], name: "index_group_participations_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_groups_on_user_id"
  end

  create_table "masters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_masters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_masters_on_reset_password_token", unique: true
  end

  create_table "material_recommendations", force: :cascade do |t|
    t.bigint "material_id"
    t.bigint "recommendation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_material_recommendations_on_material_id"
    t.index ["recommendation_id"], name: "index_material_recommendations_on_recommendation_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "user_id"
    t.text "content"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "language"
    t.string "alt_lang_title"
    t.string "alt_lang_description"
    t.index ["user_id"], name: "index_materials_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobile_participations", force: :cascade do |t|
    t.bigint "user_id"
    t.boolean "participate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mobile_participations_on_user_id"
  end

  create_table "question_answers", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "answer"
    t.bigint "quiz_id"
    t.index ["question_id"], name: "index_question_answers_on_question_id"
    t.index ["quiz_id"], name: "index_question_answers_on_quiz_id"
    t.index ["user_id"], name: "index_question_answers_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "statement"
    t.string "image"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "skill_id"
    t.text "es_statement"
    t.index ["skill_id"], name: "index_questions_on_skill_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "complete"
    t.index ["user_id"], name: "index_quizzes_on_user_id"
  end

  create_table "recommendations", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quiz_id"
    t.index ["quiz_id"], name: "index_recommendations_on_quiz_id"
    t.index ["user_id"], name: "index_recommendations_on_user_id"
  end

  create_table "skill_group_results", force: :cascade do |t|
    t.float "value"
    t.bigint "skill_group_id"
    t.bigint "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_skill_group_results_on_quiz_id"
    t.index ["skill_group_id"], name: "index_skill_group_results_on_skill_group_id"
  end

  create_table "skill_groups", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "es_title"
  end

  create_table "skill_results", force: :cascade do |t|
    t.float "value"
    t.bigint "skill_id"
    t.bigint "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_skill_results_on_quiz_id"
    t.index ["skill_id"], name: "index_skill_results_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "skill_group_id"
    t.string "es_title"
    t.index ["skill_group_id"], name: "index_skills_on_skill_group_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "gender"
    t.bigint "phone"
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "educational_institution"
    t.string "type"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "active"
    t.boolean "participate"
    t.text "answer_0"
    t.text "answer_1"
    t.text "answer_2"
    t.text "answer_3"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "generic_answers", "users"
  add_foreign_key "group_participations", "groups"
  add_foreign_key "group_participations", "users"
  add_foreign_key "groups", "users"
  add_foreign_key "material_recommendations", "materials"
  add_foreign_key "material_recommendations", "recommendations"
  add_foreign_key "materials", "users"
  add_foreign_key "mobile_participations", "users"
  add_foreign_key "question_answers", "questions"
  add_foreign_key "question_answers", "quizzes"
  add_foreign_key "question_answers", "users"
  add_foreign_key "questions", "skills"
  add_foreign_key "questions", "users"
  add_foreign_key "quizzes", "users"
  add_foreign_key "recommendations", "quizzes"
  add_foreign_key "recommendations", "users"
  add_foreign_key "skill_group_results", "quizzes"
  add_foreign_key "skill_group_results", "skill_groups"
  add_foreign_key "skill_results", "quizzes"
  add_foreign_key "skill_results", "skills"
  add_foreign_key "skills", "skill_groups"
end
