class CreatePositionGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :position_grades do |t|
      t.string :name
      t.integer :job_ability_grade
      t.integer :task_time
      t.integer :task_grade
      t.integer :base_age
      t.integer :add_amount

      t.timestamps
    end
  end
end
