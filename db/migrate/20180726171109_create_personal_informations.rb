class CreatePersonalInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_informations do |t|
      t.integer :employee_id
      t.string :name
      t.integer :department_id
      t.integer :position_grade_id
      t.integer :task_id
      t.string :birth
      t.integer :age_group_id
      t.string :insurance
      t.integer :residence_id
      t.date :join_date
      t.date :date

      t.timestamps
    end
  end
end
