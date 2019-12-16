class AddLeavingDateToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :leaving_date, :date
  end
end
