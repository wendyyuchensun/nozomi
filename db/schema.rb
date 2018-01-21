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

ActiveRecord::Schema.define(version: 2018_01_21_161841) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "appliances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.float "magnitude"
    t.integer "material_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
    t.index ["material_id"], name: "index_ingredients_on_material_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.integer "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_materials_on_unit_id"
  end

  create_table "plans", force: :cascade do |t|
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedures", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "appliance_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appliance_id"], name: "index_procedures_on_appliance_id"
    t.index ["plan_id"], name: "index_procedures_on_plan_id"
    t.index ["recipe_id"], name: "index_procedures_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "appliance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appliance_id"], name: "index_recipes_on_appliance_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
