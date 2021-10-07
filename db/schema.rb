# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_07_043015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breweries", force: :cascade do |t|
    t.text "brewery_type"
    t.text "city"
    t.text "country"
    t.integer "latitude"
    t.integer "longitude"
    t.text "name"
    t.text "phone"
    t.text "postal_code"
    t.text "state"
    t.text "street"
    t.text "website_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "brewery_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "brewery_id"
    t.text "brewery_name"
    t.integer "user_id"
    t.text "review"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "username"
    t.string "password_digest"
    t.text "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
