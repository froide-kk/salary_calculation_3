class CreateWebSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :web_settings do |t|

      t.timestamps
    end
  end
end
