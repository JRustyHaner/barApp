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

ActiveRecord::Schema.define(version: 2019_04_14_212622) do

  create_table "drink_comments", force: :cascade do |t|
    t.string "likeStatus"
    t.string "comment"
    t.datetime "reviewDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
    t.integer "userprofile_id"
    t.index ["recipe_id"], name: "index_drink_comments_on_recipe_id"
    t.index ["userprofile_id"], name: "index_drink_comments_on_userprofile_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.float "amount"
    t.string "measurement"
    t.string "ingredientName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "drinkName"
    t.string "description"
    t.string "specialDate"
    t.string "drinkLocation"
    t.date "drinkDate"
    t.string "drinkType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "userprofile_id"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["userprofile_id"], name: "index_recipes_on_userprofile_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile"
    t.string "password"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.boolean "isBusiness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "user"
  end

end
