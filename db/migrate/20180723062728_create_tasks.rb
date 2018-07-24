class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :task_ID
      t.string :task_list
      t.integer :price

      t.timestamps
    end
  end
end
