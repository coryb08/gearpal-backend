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

ActiveRecord::Schema.define(version: 20180103183745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listing_reservations", force: :cascade do |t|
    t.bigint "listing_id"
    t.bigint "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_listing_reservations_on_listing_id"
    t.index ["reservation_id"], name: "index_listing_reservations_on_reservation_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.string "picture"
    t.integer "price"
    t.boolean "availability"
    t.string "location"
    t.string "condition"
    t.string "name"
    t.integer "rating"
    t.string "lister_type"
    t.bigint "lister_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lister_type", "lister_id"], name: "index_listings_on_lister_type_and_lister_id"
    t.index ["name"], name: "index_listings_on_name"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "name"
    t.string "reserver_type"
    t.bigint "reserver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_reservations_on_name"
    t.index ["reserver_type", "reserver_id"], name: "index_reservations_on_reserver_type_and_reserver_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "location"
    t.float "borrower_rating"
    t.float "lister_rating"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "listing_reservations", "listings"
  add_foreign_key "listing_reservations", "reservations"
end
