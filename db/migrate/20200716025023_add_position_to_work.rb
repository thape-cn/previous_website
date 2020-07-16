class AddPositionToWork < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :position, :integer
    Work.all.each do |w|
      w.update(position: w.id - 1)
    end
  end
end
