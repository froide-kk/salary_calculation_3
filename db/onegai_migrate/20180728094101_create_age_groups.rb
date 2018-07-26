class CreateAgeGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :age_groups do |t|
      t.integer :personal_information_id
      t.integer :age
      t.integer :age_point
      t.integer :age_adjustment
      t.date :date

      t.timestamps
    end
  end
end
