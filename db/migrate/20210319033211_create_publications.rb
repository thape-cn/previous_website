class CreatePublications < ActiveRecord::Migration[6.1]
  def change
    create_table :publications do |t|
      t.integer :category_status, null: false, default: 0
      t.string :pdf_file
      t.string :cover_jpg
      t.string :cover_webp

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Publication.create_translation_table! title: :string
      end

      dir.down do
        Publication.drop_translation_table!
      end
    end
  end
end
