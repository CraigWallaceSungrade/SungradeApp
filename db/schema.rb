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

ActiveRecord::Schema.define(version: 20170922055848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_staffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "staff_id"
    t.bigint "appointments_id"
    t.index ["appointments_id"], name: "index_appointment_staffs_on_appointments_id"
    t.index ["staff_id"], name: "index_appointment_staffs_on_staff_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "property_id"
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_appointments_on_customer_id"
    t.index ["property_id"], name: "index_appointments_on_property_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "customer_staffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "staff_id"
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_customer_staffs_on_customer_id"
    t.index ["staff_id"], name: "index_customer_staffs_on_staff_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_properties_on_customer_id"
  end

  create_table "property_staffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "property_id"
    t.bigint "staff_id"
    t.index ["property_id"], name: "index_property_staffs_on_property_id"
    t.index ["staff_id"], name: "index_property_staffs_on_staff_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointment_staffs", "appointments", column: "appointments_id"
  add_foreign_key "appointment_staffs", "staffs"
  add_foreign_key "appointments", "customers"
  add_foreign_key "appointments", "properties"
  add_foreign_key "books", "authors"
  add_foreign_key "customer_staffs", "customers"
  add_foreign_key "customer_staffs", "staffs"
  add_foreign_key "properties", "customers"
  add_foreign_key "property_staffs", "properties"
  add_foreign_key "property_staffs", "staffs"
end
