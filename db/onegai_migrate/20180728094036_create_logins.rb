class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.string :user_id
      t.string :user_pw

      t.timestamps
    end
  end
end
