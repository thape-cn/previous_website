class AddBannerPhoneToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :banner_phone_1, :string
    add_column :homes, :banner_phone_2, :string
    add_column :homes, :banner_phone_3, :string
    add_column :homes, :banner_phone_4, :string
    add_column :homes, :banner_phone_5, :string
  end
end
