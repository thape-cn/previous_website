class AddCulturalWideToWorkTypePage < ActiveRecord::Migration[6.0]
  def change
    add_column :work_type_pages, :cultural_wide_jpg, :string
    add_column :work_type_pages, :cultural_wide_webp, :string
  end
end
