class AddInfoPhotoToTailHome < ActiveRecord::Migration[6.0]
  def change
    add_column :tail_homes, :info_1_photo, :string
    add_column :tail_homes, :info_2_photo, :string
    add_column :tail_homes, :info_3_photo, :string
    add_column :tail_homes, :background_1, :string
    add_column :tail_homes, :background_2, :string
    add_column :tail_homes, :background_3, :string
    add_column :tail_homes, :background_4, :string
    add_column :tail_homes, :background_5, :string
    add_column :tail_homes, :background_6, :string
    add_column :tail_homes, :background_1_mobile, :string
    add_column :tail_homes, :background_2_mobile, :string
    add_column :tail_homes, :background_3_mobile, :string
    add_column :tail_homes, :background_4_mobile, :string
    add_column :tail_homes, :background_5_mobile, :string
    add_column :tail_homes, :background_6_mobile, :string
    add_column :tail_homes, :background_1_pad, :string
    add_column :tail_homes, :background_2_pad, :string
    add_column :tail_homes, :background_3_pad, :string
    add_column :tail_homes, :background_4_pad, :string
    add_column :tail_homes, :background_5_pad, :string
    add_column :tail_homes, :background_6_pad, :string
  end
end
