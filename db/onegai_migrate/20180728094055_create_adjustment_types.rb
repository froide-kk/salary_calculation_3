class CreateAdjustmentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :adjustment_types do |t|
      t.string :name
      t.string :value
      t.text :hint

      t.timestamps
    end
  end
end
