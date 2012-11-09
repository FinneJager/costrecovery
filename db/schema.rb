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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121109161046) do

  create_table "command_officers", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "command_vehicles", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "emergency_supports", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "emts", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "engines", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "field_units", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "fire_chiefs", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "fire_fighters", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "hazmat_specialists", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "hazmat_units", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "incidents", :force => true do |t|
    t.timestamp "incident_datetime"
    t.string    "location"
    t.string    "report_nr"
    t.string    "responsible_party"
    t.string    "area_resident"
    t.string    "street"
    t.string    "city"
    t.string    "state"
    t.string    "home_phone"
    t.string    "cell_phone"
    t.string    "insurance_carrier_name"
    t.string    "insurance_carrier_street"
    t.string    "insurance_carrier_city"
    t.string    "insurance_carrier_state"
    t.string    "insurance_carrier_phone"
    t.string    "insurance_carrier_contact"
    t.string    "policy_nr"
    t.string    "vin_nr"
    t.string    "license_nr"
    t.string    "vehicle_make"
    t.string    "vehicle_model"
    t.string    "vehicle_year"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "status"
    t.integer   "user_id"
    t.string    "resp_zip"
    t.string    "insur_zip"
  end

  create_table "ladder_truck75s", :force => true do |t|
    t.string   "name"
    t.float    "first_hour"
    t.float    "additional_hours"
    t.float    "total_hours"
    t.float    "hazmat_hours"
    t.float    "rate1"
    t.float    "rate2"
    t.integer  "timesheet_id"
    t.string   "report_nr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mat_lists", :force => true do |t|
    t.integer   "incident_id"
    t.boolean   "knd"
    t.string    "knd_am"
    t.boolean   "gran"
    t.string    "gran_am"
    t.boolean   "hds"
    t.string    "hds_am"
    t.boolean   "dwb24"
    t.string    "dwb24_am"
    t.boolean   "dwb36"
    t.string    "dwb36_am"
    t.boolean   "dwb48"
    t.string    "dwb48_am"
    t.boolean   "shborange"
    t.string    "shborange_am"
    t.boolean   "shbwhite"
    t.string    "shbwhite_am"
    t.boolean   "qdb12"
    t.string    "qdb12_am"
    t.boolean   "qdb25"
    t.string    "qdb25_am"
    t.boolean   "qdb100"
    t.string    "qdb100_am"
    t.boolean   "mb20"
    t.string    "mb20_am"
    t.boolean   "mb5"
    t.string    "mb5_am"
    t.boolean   "mb10"
    t.string    "mb10_am"
    t.boolean   "pillow"
    t.string    "pillow_am"
    t.boolean   "evac"
    t.string    "evac_am"
    t.boolean   "abboom"
    t.string    "abboom_am"
    t.boolean   "abpad"
    t.string    "abpad_am"
    t.boolean   "putty"
    t.string    "putty_am"
    t.text      "additional"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "profiles", :force => true do |t|
    t.integer   "user_id"
    t.string    "name"
    t.string    "department"
    t.string    "street"
    t.string    "city"
    t.string    "state"
    t.string    "zipcode"
    t.string    "phone"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "pumpers", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "rescue_units", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "safety_officers", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "sessions", :force => true do |t|
    t.string    "session_id", :null => false
    t.text      "data"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "tankers", :force => true do |t|
    t.string    "name"
    t.float     "first_hour"
    t.float     "additional_hours"
    t.float     "total_hours"
    t.float     "hazmat_hours"
    t.float     "rate1"
    t.float     "rate2"
    t.integer   "timesheet_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "report_nr"
  end

  create_table "timesheets", :force => true do |t|
    t.string    "name"
    t.timestamp "date"
    t.integer   "incident_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string    "email"
    t.string    "hashed_password"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "admin"
    t.string    "logo"
  end

end
