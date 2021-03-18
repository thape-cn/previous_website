class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.string :pdf_file
      t.string :cover_jpg
      t.string :cover_webp

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Portfolio.create_translation_table! title: :string
      end

      dir.down do
        Portfolio.drop_translation_table!
      end
    end
  end
end
