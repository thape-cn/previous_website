class MergeHomePageContentTailHome < ActiveRecord::Migration[6.0]
  def change
    add_column :tail_homes, :new_project_1_id, :integer
    add_column :tail_homes, :new_project_2_id, :integer
    add_column :tail_homes, :new_project_3_id, :integer
    add_column :tail_homes, :new_project_4_id, :integer
    add_column :tail_homes, :new_project_5_id, :integer
    add_column :tail_homes, :new_project_6_id, :integer
    add_column :tail_homes, :info_1_id, :integer
    add_column :tail_homes, :info_2_id, :integer
    add_column :tail_homes, :info_3_id, :integer
    drop_table :home_page_contents do |t|
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
  end
end
