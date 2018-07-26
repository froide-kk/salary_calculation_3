class CreateSettingValues < ActiveRecord::Migration[5.2]
  def change
    create_table :setting_values do |t|
      t.string :name
      t.float :value
      t.date :year

      t.timestamps
    end
  end
end
