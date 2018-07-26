class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :personal_information_id
      t.integer :member_type_id
      t.integer :count
      t.date :date

      t.timestamps
    end
  end
end
