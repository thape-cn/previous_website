class AddHideInDesignStaffNewsTo < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :hide_in_design_staff_news, :text, default: false
  end
end
