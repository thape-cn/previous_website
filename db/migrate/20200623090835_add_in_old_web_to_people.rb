class AddInOldWebToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :in_old_web, :boolean, default: false
  end
end
