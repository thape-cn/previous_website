class AddUrlNameToCity < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :url_name, :string
  end
end
