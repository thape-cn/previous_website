class AddWebpToBackgroundInTailHome < ActiveRecord::Migration[6.0]
  def change
    add_column :tail_homes, :background_1_webp, :string
    add_column :tail_homes, :background_2_webp, :string
    add_column :tail_homes, :background_3_webp, :string
    add_column :tail_homes, :background_4_webp, :string
    add_column :tail_homes, :background_5_webp, :string
    add_column :tail_homes, :background_6_webp, :string
    add_column :tail_homes, :background_1_mobile_webp, :string
    add_column :tail_homes, :background_2_mobile_webp, :string
    add_column :tail_homes, :background_3_mobile_webp, :string
    add_column :tail_homes, :background_4_mobile_webp, :string
    add_column :tail_homes, :background_5_mobile_webp, :string
    add_column :tail_homes, :background_6_mobile_webp, :string
    add_column :tail_homes, :background_1_pad_webp, :string
    add_column :tail_homes, :background_2_pad_webp, :string
    add_column :tail_homes, :background_3_pad_webp, :string
    add_column :tail_homes, :background_4_pad_webp, :string
    add_column :tail_homes, :background_5_pad_webp, :string
    add_column :tail_homes, :background_6_pad_webp, :string
  end
end
