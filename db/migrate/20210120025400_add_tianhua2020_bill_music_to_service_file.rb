class AddTianhua2020BillMusicToServiceFile < ActiveRecord::Migration[6.0]
  def change
    add_column :service_files, :tianhua_2020_bill_music, :string
  end
end
