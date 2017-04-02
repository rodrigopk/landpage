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

ActiveRecord::Schema.define(version: 20170401235120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.string   "name",                 null: false
    t.date     "birthdate",            null: false
    t.string   "location"
    t.string   "title",                null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "pitch"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "title",                        null: false
    t.date     "date_started",                 null: false
    t.date     "date_ended"
    t.boolean  "current",      default: false
    t.string   "description"
    t.string   "company",                      null: false
    t.string   "company_url"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
