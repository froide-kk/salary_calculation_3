class CreateMemberTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :member_types do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
