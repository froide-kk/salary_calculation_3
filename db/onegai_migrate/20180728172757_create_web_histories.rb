class CreateWebHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :web_histories do |t|

      t.timestamps
    end
  end
end
