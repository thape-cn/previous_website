class AddOtherToCase < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :other, :text
  end
end
