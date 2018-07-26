class CreateDetailsEmployeeSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :details_employee_salaries do |t|
      t.integer :personal_information_id
      t.integer :face_salary
      t.integer :minus_salary
      t.float :promotion_rate
      t.integer :base_salary
      t.string :basic_pay
      t.integer :time_unit_price
      t.integer :fixed_extra_task_time
      t.integer :fixed_overtime
      t.integer :job_ability_grade
      t.integer :duty_allowance
      t.integer :duty_allowance_task
      t.integer :fixed_allowance
      t.integer :half_year_salary
      t.integer :last_years_hourly
      t.integer :hourly_difference
      t.float :hourly_difference_percent

      t.timestamps
    end
  end
end
