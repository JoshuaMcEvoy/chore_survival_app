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

ActiveRecord::Schema.define(version: 20170829054931) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chores", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "reward"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
  end

  create_table "chores_users", id: false, force: :cascade do |t|
    t.bigint "chore_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "email"
    t.integer "rewards_total"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_id"
  end

end
