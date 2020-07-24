class AddHeroNewsTitleCap < ActiveRecord::Migration[6.0]
  def change
    add_column :tail_homes, :hero_news_title_cap, :integer
  end
end
