class CreateSupportResidences < ActiveRecord::Migration[5.2]
  def change
    create_table :support_residences do |t|
      t.integer :personal_information_id
      t.string :name
      t.integer :price
      t.date :start_month

      t.timestamps
    end
  end
end
