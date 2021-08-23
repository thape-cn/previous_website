class AddCompanyNameEnglishToCity < ActiveRecord::Migration[6.1]
  def change
    add_column :cities, :company_name_english, :string
  end
end
