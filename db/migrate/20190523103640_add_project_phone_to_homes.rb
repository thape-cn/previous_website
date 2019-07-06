class AddProjectPhoneToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :project_phone_img_1, :string
    add_column :homes, :project_phone_img_2, :string
    add_column :homes, :project_phone_img_3, :string
  end
end
