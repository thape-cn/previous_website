class ChangePlanningAreaToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :works, :planning_area, :decimal
  end
end
