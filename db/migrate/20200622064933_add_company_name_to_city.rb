class AddCompanyNameToCity < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :company_name, :string
  end
end
