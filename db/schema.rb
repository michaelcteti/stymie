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

ActiveRecord::Schema.define(version: 20180420210936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_holes", force: :cascade do |t|
    t.bigint "course_id"
    t.integer "number"
    t.integer "par"
    t.integer "yardage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_holes_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "tees"
    t.float "rating"
    t.integer "slope"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holes", force: :cascade do |t|
    t.bigint "round_id"
    t.bigint "course_hole_id"
    t.integer "score"
    t.boolean "ipd"
    t.boolean "gir"
    t.integer "putt_one"
    t.integer "putt_two"
    t.integer "putt_three"
    t.integer "putt_four"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_hole_id"], name: "index_holes_on_course_hole_id"
    t.index ["round_id"], name: "index_holes_on_round_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.datetime "date"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
    t.index ["course_id"], name: "index_rounds_on_course_id"
  end

  add_foreign_key "course_holes", "courses"
  add_foreign_key "holes", "course_holes"
  add_foreign_key "holes", "rounds"
  add_foreign_key "rounds", "courses"
end
