class CreateWebPersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :web_personals do |t|

      t.timestamps
    end
  end
end
