class AddSnapshotToWork < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :snapshot_jpg, :string
    add_column :works, :snapshot_webp, :string
  end
end
