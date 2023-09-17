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

ActiveRecord::Schema[7.0].define(version: 2023_09_16_160857) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grammar_points", force: :cascade do |t|
    t.string "grammar_point_japanese"
    t.string "grammar_point_brief_translation"
    t.string "jlpt_level"
    t.string "highlight_example"
    t.string "highlight_example_translation"
    t.text "caution_text"
    t.text "caution_examples"
    t.text "structure_text"
    t.text "about_grammar"
    t.string "about_grammar_example_one"
    t.string "about_grammar_example_one_translation"
    t.string "about_grammar_example_two"
    t.string "about_grammar_example_two_translation"
    t.string "about_grammar_example_three"
    t.string "about_grammar_example_three_translation"
    t.string "bonus_example_one"
    t.string "bonus_example_one_translation"
    t.string "bonus_example_two"
    t.string "bonus_example_two_translation"
    t.string "bonus_example_three"
    t.string "bonus_example_three_translation"
    t.string "resources_titles"
    t.string "resources_urls"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
