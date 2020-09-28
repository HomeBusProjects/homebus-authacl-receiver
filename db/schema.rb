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

ActiveRecord::Schema.define(version: 2020_09_28_190048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acls", force: :cascade do |t|
    t.uuid "username", null: false
    t.string "topic", null: false
    t.integer "permissions", default: 0, null: false
    t.uuid "provision_request_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provision_request_id"], name: "index_acls_on_provision_request_id"
    t.index ["topic"], name: "index_acls_on_topic"
    t.index ["username"], name: "index_acls_on_username"
  end

  create_table "auths", force: :cascade do |t|
    t.uuid "username", null: false
    t.string "password", null: false
    t.boolean "superuser", default: false, null: false
    t.uuid "provision_request_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enabled", default: true, null: false
    t.index ["enabled", "username"], name: "index_auths_on_enabled_and_username"
    t.index ["provision_request_id"], name: "index_auths_on_provision_request_id"
    t.index ["username"], name: "index_auths_on_username"
  end

end
