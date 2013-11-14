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

ActiveRecord::Schema.define(version: 20131112222918) do

  create_table "scenery_flexslider_translations", force: true do |t|
    t.integer  "scenery_flexslider_id"
    t.string   "title"
    t.string   "locale"
    t.text     "content"
    t.string   "image"
    t.string   "image_tmp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scenery_flexslider_translations", ["locale"], name: "index_scenery_flexslider_translations_on_locale"
  add_index "scenery_flexslider_translations", ["scenery_flexslider_id"], name: "index_scenery_flexslider_translations_on_scenery_flexslider_id"

  create_table "scenery_flexsliders", force: true do |t|
    t.boolean  "active"
    t.string   "image"
    t.string   "image_tmp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
