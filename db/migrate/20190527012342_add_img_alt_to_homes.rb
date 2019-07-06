class AddImgAltToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :banner_alt_1, :string
    add_column :homes, :banner_alt_2, :string
    add_column :homes, :banner_alt_3, :string
    add_column :homes, :banner_alt_4, :string
    add_column :homes, :banner_alt_5, :string

    add_column :homes, :project_alt_1, :string
    add_column :homes, :project_alt_2, :string
    add_column :homes, :project_alt_3, :string

    add_column :homes, :info_alt_1, :string
    add_column :homes, :info_alt_2, :string
    add_column :homes, :info_alt_3, :string
  end
end
