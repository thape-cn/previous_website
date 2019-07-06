class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.integer :category
      t.integer :line
      t.string :avatar
      t.string :photo
      t.string :name
      t.string :title
      t.text :introduce
      t.string :works

      t.timestamps
    end
  end
end
