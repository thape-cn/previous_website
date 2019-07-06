class AddPositionToInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :position, :integer, default: 0
    Info.all.each do |info|
      info.update(position: info.id)
    end
  end
end
