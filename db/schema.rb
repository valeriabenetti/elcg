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

ActiveRecord::Schema.define(version: 20170518191835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.integer "process_identifier"
    t.string "process_name"
    t.text "process_intructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
