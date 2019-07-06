class AddPositionToCase < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :position, :integer, default: 0
    Case.all.each do |c|
      c.update(position: c.id)
    end
  end
end
