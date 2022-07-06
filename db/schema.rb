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

ActiveRecord::Schema[7.0].define(version: 2022_07_06_161855) do
  create_table "paths", force: :cascade do |t|
    t.string "id_element"
    t.string "class_element"
    t.string "d_element"
    t.integer "sprite_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sprite_id"], name: "index_paths_on_sprite_id"
  end

  create_table "sprites", force: :cascade do |t|
    t.string "name"
    t.string "frame"
    t.string "row"
    t.string "column"
    t.float "width"
    t.float "height"
    t.string "viewbox"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string "fill"
    t.string "fill_opacity"
    t.string "stroke"
    t.float "stroke_fill"
    t.float "stroke_width"
    t.float "opacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "paths", "sprites"
end
