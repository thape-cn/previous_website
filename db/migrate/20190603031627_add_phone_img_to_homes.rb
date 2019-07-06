class AddPhoneImgToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :info_high_phone_img, :string
  end
end
