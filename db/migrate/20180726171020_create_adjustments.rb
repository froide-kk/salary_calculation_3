class CreateAdjustments < ActiveRecord::Migration[5.2]
  def change
    create_table :adjustments do |t|
      t.integer :personal_information_id
      t.integer :adjustment_type_id
      t.integer :count
      t.date :date

      t.timestamps
    end
  end
end
