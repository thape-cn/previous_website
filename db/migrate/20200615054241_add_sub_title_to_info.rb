class AddSubTitleToInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :infos, :sub_title, :string
  end
end
