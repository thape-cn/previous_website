class CreateSeos < ActiveRecord::Migration[5.2]
  def change
    create_table :seos do |t|
      t.string :home_title
      t.text :description
      t.text :abstract
      t.text :keywords

      t.timestamps
    end
  end
end
