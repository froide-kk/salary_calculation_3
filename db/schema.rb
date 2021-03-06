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

ActiveRecord::Schema.define(version: 2018_08_09_042218) do

  create_table "adjustment_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.text "hint"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adjustments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "employee_name"
    t.bigint "adjustment_type_id", null: false
    t.integer "count"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adjustment_type_id"], name: "fk_rails_b9e1078207"
  end

  create_table "age_adjustments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "age_groups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "personal_information_id"
    t.integer "age"
    t.integer "age_point"
    t.integer "age_adjustment"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detail_employee_salaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "personal_information_id", null: false
    t.integer "face_salary"
    t.integer "minus_salary"
    t.float "promotion_rate"
    t.integer "base_salary"
    t.string "basic_pay"
    t.integer "time_unit_price"
    t.integer "fixed_extra_task_time"
    t.integer "fixed_overtime"
    t.integer "job_ability_grade"
    t.integer "duty_allowance"
    t.integer "duty_allowance_task"
    t.integer "fixed_allowance"
    t.integer "half_year_salary"
    t.integer "last_years_hourly"
    t.integer "hourly_difference"
    t.float "hourly_difference_percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "family_allowance"
    t.integer "age_point"
    t.integer "age_adjustment"
    t.index ["personal_information_id"], name: "fk_rails_bbea969dda"
  end

  create_table "logins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_id"
    t.string "user_pw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "employee_name"
    t.bigint "member_type_id", null: false
    t.integer "count"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_type_id"], name: "fk_rails_9a10de6ee1"
  end

  create_table "personal_info_pdfs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_informations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "employee_id"
    t.string "name"
    t.bigint "department_id", null: false
    t.bigint "position_grade_id", null: false
    t.bigint "task_id", null: false
    t.string "birth"
    t.integer "age"
    t.string "insurance"
    t.bigint "residence_id", null: false
    t.date "join_date"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "fk_rails_4707a94278"
    t.index ["position_grade_id"], name: "fk_rails_144a4e0141"
    t.index ["residence_id"], name: "fk_rails_51eaccbbf6"
    t.index ["task_id"], name: "fk_rails_9d834a81e2"
  end

  create_table "position_grades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "job_ability_grade"
    t.integer "task_time"
    t.integer "task_grade"
    t.integer "base_age"
    t.integer "add_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residences", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setting_values", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.date "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "support_residences", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "personal_information_id", null: false
    t.string "name"
    t.integer "price"
    t.date "start_month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["personal_information_id"], name: "fk_personal"
  end

  create_table "tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "web_histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "web_logins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "web_personals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "web_settings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "web_wages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "adjustments", "adjustment_types"
  add_foreign_key "detail_employee_salaries", "personal_informations"
  add_foreign_key "members", "member_types"
  add_foreign_key "personal_informations", "departments"
  add_foreign_key "personal_informations", "position_grades"
  add_foreign_key "personal_informations", "residences"
  add_foreign_key "personal_informations", "tasks"
  add_foreign_key "support_residences", "personal_informations", name: "fk_personal"
end
