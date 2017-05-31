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

ActiveRecord::Schema.define(version: 20170530215955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_favorites_on_test_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "files", force: :cascade do |t|
    t.binary "content"
    t.text "metadata"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "tests", force: :cascade do |t|
    t.integer "procedure_identifier"
    t.string "procedure_name"
    t.string "procedure_master_number"
    t.text "synonyms"
    t.string "test_code"
    t.integer "category_code"
    t.string "category_name"
    t.boolean "eppicare_inactive_flag"
    t.boolean "orderable"
    t.integer "collection_identifier"
    t.string "collection_name"
    t.text "collection_instructions"
    t.bigint "process_identifier"
    t.string "process_name"
    t.text "process_intructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favorites", "tests"
  add_foreign_key "favorites", "users"
  add_foreign_key "profiles", "users"
end
