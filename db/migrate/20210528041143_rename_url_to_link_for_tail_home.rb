class RenameUrlToLinkForTailHome < ActiveRecord::Migration[6.1]
  def change
    rename_column :tail_homes, :background_1_url, :background_1_link
    rename_column :tail_homes, :background_2_url, :background_2_link
    rename_column :tail_homes, :background_3_url, :background_3_link
    rename_column :tail_homes, :background_4_url, :background_4_link
    rename_column :tail_homes, :background_5_url, :background_5_link
    rename_column :tail_homes, :background_6_url, :background_6_link
  end
end
