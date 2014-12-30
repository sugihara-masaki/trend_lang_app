# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150104192559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "repository_snapshots", force: :cascade do |t|
    t.string  "name",             null: false
    t.string  "html_url",         null: false
    t.integer "stargazers_count", null: false
    t.string  "language",         null: false
    t.date    "create_date",      null: false
  end

  add_index "repository_snapshots", ["create_date", "language"], name: "index_repository_snapshots_on_create_date_and_language", using: :btree
  add_index "repository_snapshots", ["create_date", "stargazers_count"], name: "index_repository_snapshots_on_create_date_and_stargazers_count", using: :btree
  add_index "repository_snapshots", ["language"], name: "index_repository_snapshots_on_language", using: :btree
  add_index "repository_snapshots", ["stargazers_count"], name: "index_repository_snapshots_on_stargazers_count", using: :btree

end
