class CreateSettingValues < ActiveRecord::Migration[5.2]
  def change
    create_table :setting_values do |t|
      t.string :setting_list
      t.integer :value

      t.timestamps
    end
  end
end
