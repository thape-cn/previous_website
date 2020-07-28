class AddHeroNewsPhotoMobileToTailHome < ActiveRecord::Migration[6.0]
  def change
    add_column :tail_homes, :hero_news_photo_mobile, :string
  end
end
