class AddCityTitleToCityPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :city_people, :city_title, :string
  end
end
