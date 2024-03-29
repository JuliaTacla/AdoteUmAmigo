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

ActiveRecord::Schema.define(version: 20161210180443) do

  create_table "animals", force: :cascade do |t|
    t.string   "photo"
    t.text     "description"
    t.string   "name"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "adopted",     default: false
  end

  create_table "fosters", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "age"
    t.boolean  "children"
    t.boolean  "pets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "animal_id"
    t.index ["animal_id"], name: "index_fosters_on_animal_id"
  end

end
