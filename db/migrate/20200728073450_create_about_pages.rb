class CreateAboutPages < ActiveRecord::Migration[6.0]
  def change
    create_table :about_pages do |t|
      t.text :thape_intro
      t.string :about_h1
      t.string :about_h1_mobile
      t.string :about_h2
      t.string :about_h2_mobile
      t.string :about_h3
      t.string :about_h3_mobile
      t.string :about_h4
      t.string :about_h4_mobile
      t.string :about_h5
      t.string :about_h5_mobile
      t.string :about_h6
      t.string :about_h6_mobile
      t.string :about_h7
      t.string :about_h7_mobile

      t.timestamps
    end
    AboutPage.create
  end
end
