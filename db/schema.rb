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

ActiveRecord::Schema.define(version: 2019_04_07_022122) do

  create_table "drink_pictures", force: :cascade do |t|
    t.string "fileName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drink_recipes", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string "drinkName"
    t.string "specialDate"
    t.string "drinkLocation"
    t.datetime "drinkDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.float "amount"
    t.string "measurement"
    t.string "ingredientName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "drinkName"
    t.string "description"
    t.string "specialDate"
    t.string "drinkLocation"
    t.datetime "drinkDate"
    t.string "fileName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

end
