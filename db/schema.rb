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

ActiveRecord::Schema.define(version: 20170618122143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string   "phone",        null: false
    t.string   "email",        null: false
    t.string   "skype_id",     null: false
    t.string   "linkedin_url"
    t.string   "github_url"
    t.string   "twitter"
    t.integer  "developer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["developer_id"], name: "index_contacts_on_developer_id", using: :btree
  end

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

  create_table "educations", force: :cascade do |t|
    t.string   "institution"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "graduated"
    t.string   "title"
    t.string   "field"
    t.string   "institution_url"
    t.integer  "developer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["developer_id"], name: "index_educations_on_developer_id", using: :btree
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
    t.integer  "developer_id"
    t.index ["developer_id"], name: "index_experiences_on_developer_id", using: :btree
  end

  create_table "interests", force: :cascade do |t|
    t.string   "title",              null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "developer_id"
    t.index ["developer_id"], name: "index_interests_on_developer_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "title",              null: false
    t.integer  "experience",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "developer_id"
    t.index ["developer_id"], name: "index_skills_on_developer_id", using: :btree
  end

  add_foreign_key "contacts", "developers"
  add_foreign_key "educations", "developers"
  add_foreign_key "experiences", "developers"
  add_foreign_key "interests", "developers"
  add_foreign_key "skills", "developers"
end
