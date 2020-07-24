class AddNewsHeroPhotoToTailHome < ActiveRecord::Migration[6.0]
  def change
    add_column :tail_homes, :hero_news_photo, :string
    add_column :tail_homes, :hero_news_id, :integer
  end
end
