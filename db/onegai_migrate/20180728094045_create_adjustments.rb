class CreateAdjustments < ActiveRecord::Migration[5.2]
  def change
    create_table :adjustments do |t|
      t.integer :personal_information_id
      t.bigint :adjustment_type_id, null: false
      t.integer :count
      t.date :date


      t.timestamps
    end
    add_foreign_key :adjustments, :adjustment_types, column: :adjustment_type_id
  end
end
