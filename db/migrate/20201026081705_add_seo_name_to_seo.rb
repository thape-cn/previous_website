class AddSeoNameToSeo < ActiveRecord::Migration[6.0]
  def change
    add_column :seos, :seo_name, :string
  end
end
