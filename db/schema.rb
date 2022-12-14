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

ActiveRecord::Schema[7.0].define(version: 2022_08_26_191442) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jurors", force: :cascade do |t|
    t.integer "panel_number"
    t.string "name"
    t.integer "age"
    t.string "sex"
    t.string "residence"
    t.string "housing"
    t.string "education"
    t.boolean "law_experience"
    t.string "occupation"
    t.boolean "military_service"
    t.boolean "jury_relation"
    t.string "prior_jury"
    t.string "notes"
    t.boolean "jury_pool"
    t.boolean "jury_box"
    t.boolean "jury_alternate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "council"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
