class AddCityEnTitleToCityPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :city_people, :city_en_title, :string
  end
end
