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

ActiveRecord::Schema.define(version: 20160420145322) do

  create_table "content_builder_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "content_builder_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "content_builder_images", ["content_builder_id"], name: "index_content_builder_images_on_content_builder_id"

  create_table "content_builders", force: :cascade do |t|
    t.string   "title"
    t.datetime "date_publish"
    t.text     "content"
    t.boolean  "status",       default: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
