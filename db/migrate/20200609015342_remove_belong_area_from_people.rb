class RemoveBelongAreaFromPeople < ActiveRecord::Migration[6.0]
  def change
    remove_column :people, :belong_area, :string
  end
end
