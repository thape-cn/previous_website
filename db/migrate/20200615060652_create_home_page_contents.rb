class CreateHomePageContents < ActiveRecord::Migration[6.0]
  def change
    create_table :home_page_contents do |t|
      t.integer :work_1_id
      t.integer :work_2_id
      t.integer :work_3_id
      t.integer :work_4_id
      t.integer :work_5_id
      t.integer :work_6_id
      t.integer :news_1_id
      t.integer :news_2_id
      t.integer :news_3_id

      t.timestamps
    end
    HomePageContent.create
  end
end
