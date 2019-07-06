class AddProfessionalToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :professional, :string
  end
end
