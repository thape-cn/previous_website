class AddTitleSubtitleUrlToTailHome < ActiveRecord::Migration[6.1]
  def change
    change_column(:tail_homes, :new_project_photo_1, :string)
    change_column(:tail_homes, :new_project_photo_2l, :string)
    change_column(:tail_homes, :new_project_photo_3w, :string)
    change_column(:tail_homes, :new_project_photo_4, :string)
    change_column(:tail_homes, :new_project_photo_5, :string)
    change_column(:tail_homes, :new_project_photo_6, :string)

    change_column(:tail_homes, :info_1_photo, :string)
    change_column(:tail_homes, :info_2_photo, :string)
    change_column(:tail_homes, :info_3_photo, :string)

    change_column(:tail_homes, :background_1, :string)
    add_column :tail_homes, :background_1_title, :string
    add_column :tail_homes, :background_1_subtitle, :string
    add_column :tail_homes, :background_1_url, :string
    change_column(:tail_homes, :background_2, :string)
    add_column :tail_homes, :background_2_title, :string
    add_column :tail_homes, :background_2_subtitle, :string
    add_column :tail_homes, :background_2_url, :string
    change_column(:tail_homes, :background_3, :string)
    add_column :tail_homes, :background_3_title, :string
    add_column :tail_homes, :background_3_subtitle, :string
    add_column :tail_homes, :background_3_url, :string
    change_column(:tail_homes, :background_4, :string)
    add_column :tail_homes, :background_4_title, :string
    add_column :tail_homes, :background_4_subtitle, :string
    add_column :tail_homes, :background_4_url, :string
    change_column(:tail_homes, :background_5, :string)
    add_column :tail_homes, :background_5_title, :string
    add_column :tail_homes, :background_5_subtitle, :string
    add_column :tail_homes, :background_5_url, :string
    change_column(:tail_homes, :background_6, :string)
    add_column :tail_homes, :background_6_title, :string
    add_column :tail_homes, :background_6_subtitle, :string
    add_column :tail_homes, :background_6_url, :string

    change_column(:tail_homes, :background_1_mobile, :string)
    change_column(:tail_homes, :background_2_mobile, :string)
    change_column(:tail_homes, :background_3_mobile, :string)
    change_column(:tail_homes, :background_4_mobile, :string)
    change_column(:tail_homes, :background_5_mobile, :string)
    change_column(:tail_homes, :background_6_mobile, :string)

    change_column(:tail_homes, :background_1_pad, :string)
    change_column(:tail_homes, :background_2_pad, :string)
    change_column(:tail_homes, :background_3_pad, :string)
    change_column(:tail_homes, :background_4_pad, :string)
    change_column(:tail_homes, :background_5_pad, :string)
    change_column(:tail_homes, :background_6_pad, :string)

    change_column(:tail_homes, :background_1_webp, :string)
    change_column(:tail_homes, :background_2_webp, :string)
    change_column(:tail_homes, :background_3_webp, :string)
    change_column(:tail_homes, :background_4_webp, :string)
    change_column(:tail_homes, :background_5_webp, :string)
    change_column(:tail_homes, :background_6_webp, :string)

    change_column(:tail_homes, :background_1_mobile_webp, :string)
    change_column(:tail_homes, :background_2_mobile_webp, :string)
    change_column(:tail_homes, :background_3_mobile_webp, :string)
    change_column(:tail_homes, :background_4_mobile_webp, :string)
    change_column(:tail_homes, :background_5_mobile_webp, :string)
    change_column(:tail_homes, :background_6_mobile_webp, :string)

    change_column(:tail_homes, :background_1_pad_webp, :string)
    change_column(:tail_homes, :background_2_pad_webp, :string)
    change_column(:tail_homes, :background_3_pad_webp, :string)
    change_column(:tail_homes, :background_4_pad_webp, :string)
    change_column(:tail_homes, :background_5_pad_webp, :string)
    change_column(:tail_homes, :background_6_pad_webp, :string)

    change_column(:tail_homes, :hero_news_photo, :string)
    change_column(:tail_homes, :hero_news_photo_mobile, :string)
  end
end
