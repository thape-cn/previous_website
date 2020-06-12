class AddPublishedToWork < ActiveRecord::Migration[6.0]
  def change
    add_column :works, :published, :boolean, default: true
  end
end
