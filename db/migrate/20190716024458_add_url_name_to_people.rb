class AddUrlNameToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :url_name, :string
  end
end
