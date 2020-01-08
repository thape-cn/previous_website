class ChangeMaxWorkdaysToString < ActiveRecord::Migration[6.0]
  def change
    change_column :tianhua2019s, :max_weekday, :string
  end
end
