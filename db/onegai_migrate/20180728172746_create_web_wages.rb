class CreateWebWages < ActiveRecord::Migration[5.2]
  def change
    create_table :web_wages do |t|

      t.timestamps
    end
  end
end
