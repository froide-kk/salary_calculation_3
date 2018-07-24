class CreateFamilyAllowances < ActiveRecord::Migration[5.2]
  def change
    create_table :family_allowances do |t|
      t.string :family_type
      t.integer :price

      t.timestamps
    end
  end
end
