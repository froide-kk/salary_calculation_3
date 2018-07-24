class CreateAdjustmentValues < ActiveRecord::Migration[5.2]
  def change
    create_table :adjustment_values do |t|
      t.string :adjustment_list
      t.string :value

      t.timestamps
    end
  end
end
