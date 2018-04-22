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

ActiveRecord::Schema.define(version: 20180421233717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_deductions", force: :cascade do |t|
    t.string   "name",        null: false
    t.float    "value",       null: false
    t.text     "description"
    t.integer  "company_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "applied_sanctions", force: :cascade do |t|
    t.float    "value",           null: false
    t.datetime "date",            null: false
    t.string   "name",            null: false
    t.text     "description"
    t.integer  "model_id",        null: false
    t.integer  "sanction_id",     null: false
    t.integer  "detail_id",       null: false
    t.integer  "head_quartes_id", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",       null: false
    t.binary   "logo",       null: false
    t.string   "mime_type",  null: false
    t.string   "logo_name",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deductions", force: :cascade do |t|
    t.string   "name",               null: false
    t.float    "value",              null: false
    t.text     "description"
    t.date     "date"
    t.integer  "admin_deduction_id"
    t.integer  "detail_id",          null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "default_platforms", force: :cascade do |t|
    t.string   "name",       null: false
    t.binary   "logo",       null: false
    t.string   "mime_type",  null: false
    t.string   "logo_name",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.float    "value"
    t.float    "gain"
    t.integer  "paysheet_id", null: false
    t.integer  "model_id",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "head_quartes", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address"
    t.integer  "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loan_payments", force: :cascade do |t|
    t.float    "value",      null: false
    t.integer  "detail_id",  null: false
    t.integer  "loan_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loans", force: :cascade do |t|
    t.float    "value",      null: false
    t.date     "date",       null: false
    t.float    "debt"
    t.boolean  "paid_out"
    t.integer  "model_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "document",      null: false
    t.string   "document_type", null: false
    t.string   "nickname"
    t.integer  "company_id",    null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "nicknames", force: :cascade do |t|
    t.string   "name",        null: false
    t.float    "accordance",  null: false
    t.string   "user",        null: false
    t.string   "password",    null: false
    t.integer  "platform_id", null: false
    t.integer  "model_id",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "paysheets", force: :cascade do |t|
    t.date     "since_date",      null: false
    t.date     "until_date",      null: false
    t.float    "value"
    t.float    "gain"
    t.float    "dollar_value",    null: false
    t.float    "rmr",             null: false
    t.integer  "head_quartes_id", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "platform_gains", force: :cascade do |t|
    t.float    "tokens",      null: false
    t.float    "value",       null: false
    t.float    "accordance",  null: false
    t.float    "gain",        null: false
    t.integer  "nickname_id", null: false
    t.integer  "detail_id",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string   "name",                null: false
    t.binary   "logo",                null: false
    t.string   "mime_type",           null: false
    t.string   "logo_name",           null: false
    t.integer  "company_id",          null: false
    t.integer  "default_platform_id"
    t.float    "accordance",          null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sanctions", force: :cascade do |t|
    t.string   "name",        null: false
    t.float    "value",       null: false
    t.string   "code",        null: false
    t.text     "description"
    t.integer  "company_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.integer  "role_id",    null: false
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
