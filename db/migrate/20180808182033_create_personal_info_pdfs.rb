class CreatePersonalInfoPdfs < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_info_pdfs do |t|

      t.timestamps
    end
  end
end
