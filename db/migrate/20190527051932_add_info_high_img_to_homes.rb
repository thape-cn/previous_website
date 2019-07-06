class AddInfoHighImgToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :info_high_img, :string
    add_column :homes, :info_high_title, :string
    add_column :homes, :info_high_introduction, :text
    add_column :homes, :info_high_link, :string
  end
end
