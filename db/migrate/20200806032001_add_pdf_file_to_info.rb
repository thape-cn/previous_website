class AddPdfFileToInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :infos, :pdf_file, :string
  end
end
