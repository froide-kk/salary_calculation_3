class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :personal_information_id
      t.bigint :member_type_id, null: false
      t.integer :count
      t.date :date
      t.timestamps
    end
    add_foreign_key :members, :member_types, column: :member_type_id
  end
end
