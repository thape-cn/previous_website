class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :banner_1
      t.string :title_1
      t.string :subtitle_1
      t.string :banner_2
      t.string :title_2
      t.string :subtitle_2
      t.string :banner_3
      t.string :title_3
      t.string :subtitle_3
      t.string :banner_4
      t.string :title_4
      t.string :subtitle_4
      t.string :banner_5
      t.string :title_5
      t.string :subtitle_5
      t.string :project_img_1
      t.string :project_title_1
      t.string :project_subtitle_1
      t.string :project_link_1
      t.string :project_img_2
      t.string :project_title_2
      t.string :project_subtitle_2
      t.string :project_link_2
      t.string :project_img_3
      t.string :project_title_3
      t.string :project_subtitle_3
      t.string :project_link_3
      t.string :info_img_1
      t.string :info_title_1
      t.string :info_subtitle_1
      t.string :info_link_1
      t.string :info_img_2
      t.string :info_title_2
      t.string :info_subtitle_2
      t.string :info_link_2
      t.string :info_img_3
      t.string :info_title_3
      t.string :info_subtitle_3
      t.string :info_link_3

      t.timestamps
    end
  end
end
