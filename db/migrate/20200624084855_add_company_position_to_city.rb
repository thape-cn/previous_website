class AddCompanyPositionToCity < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :company_position, :integer
  end
end
