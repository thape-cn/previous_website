class AddSeoFieldsToCaseInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :cases, :seo_title, :string
    add_column :cases, :seo_keywords, :string
    add_column :cases, :seo_description, :string
    add_column :infos, :seo_title, :string
    add_column :infos, :seo_keywords, :string
    add_column :infos, :seo_description, :string
  end
end
