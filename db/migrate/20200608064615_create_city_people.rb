class CreateCityPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :city_people do |t|
      t.references :city
      t.references :person

      t.timestamps
    end
  end
end
