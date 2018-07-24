class CreateUserS < ActiveRecord::Migration[5.2]
  def change
    create_table :user_s do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end