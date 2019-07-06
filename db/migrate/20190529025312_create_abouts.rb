class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :about_title
      t.text :about_content
      t.string :about_img
      t.string :about_img_alt

      t.timestamps
    end
  end
end
