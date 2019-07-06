class RemoveNoUsedFieldFromCase < ActiveRecord::Migration[5.2]
  def change
    remove_columns :cases, :name, :area, :address, :service, :schedule, :start, :team
  end
end
