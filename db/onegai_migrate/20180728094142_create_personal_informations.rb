class CreatePersonalInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_informations do |t|
      t.integer :employee_id
      t.string :name
      t.bigint :department_id, null: false
      t.bigint :position_grade_id, null: false
      t.bigint :task_id, null: false
      t.string :birth
      t.integer :age
      t.string :insurance
      t.bigint :residence_id, null: false
      t.date :join_date
      t.date :date

      t.timestamps
    end
    add_foreign_key :personal_informations, :departments, column: :department_id
    add_foreign_key :personal_informations, :position_grades, column: :position_grade_id
    add_foreign_key :personal_informations, :tasks, column: :task_id
    add_foreign_key :personal_informations, :residences, column: :residence_id
  end
end
