class CreateResidenceAllowances < ActiveRecord::Migration[5.2]
  def change
    create_table :residence_allowances do |t|
      t.string :residence_type
      t.integer :price

      t.timestamps
    end
  end
end
