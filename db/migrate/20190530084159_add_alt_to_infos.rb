class AddAltToInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :snapshot_alt, :string
    add_column :infos, :banner_alt, :string
  end
end
