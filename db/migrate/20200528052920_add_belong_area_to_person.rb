class AddBelongAreaToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :belong_area, :string
  end
end
