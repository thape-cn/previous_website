class CreateInsights < ActiveRecord::Migration[7.0]
  def change
    create_table :insights do |t|
      t.string :pdf_file
      t.string :cover_jpg
      t.string :cover_webp
      t.integer :pixel_height
      t.integer :pixel_width
      t.integer :position
      t.string :mobile_cover_jpg
      t.string :mobile_cover_webp
      t.string :page_cover

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Insight.create_translation_table! title: :string, sub_title: :string
      end

      dir.down do
        Insight.drop_translation_table!
      end
    end
  end
end
