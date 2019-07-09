class AddHideInIndex < ActiveRecord::Migration[5.2]
  def change
    change_column :infos, :hide_in_design_staff_news, :boolean, default: false
    add_column :infos, :hide_in_index_news, :boolean, default: false
  end
end
