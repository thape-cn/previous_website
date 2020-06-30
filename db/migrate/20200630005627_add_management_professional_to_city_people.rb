class AddManagementProfessionalToCityPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :city_people, :is_management, :boolean, default: false
    add_column :city_people, :is_professional, :boolean, default: false
  end
end
