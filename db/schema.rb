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

ActiveRecord::Schema.define(version: 2018_07_26_171113) do

  create_table "adjustment_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.text "hint"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adjustments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "personal_information_id"
    t.integer "adjustment_type_id"
    t.integer "count"
    t.date "date"
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

  create_table "details_employee_salaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "personal_information_id"
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
    t.integer "personal_information_id"
    t.integer "member_type_id"
    t.integer "count"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_informations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "employee_id"
    t.string "name"
    t.integer "department_id"
    t.integer "position_grade_id"
    t.integer "task_id"
    t.string "birth"
    t.integer "age_group_id"
    t.string "insurance"
    t.integer "residence_id"
    t.date "join_date"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "personal_information_id"
    t.string "name"
    t.integer "price"
    t.date "start_month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
