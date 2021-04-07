class AddSubTitleToPublicationPortfolio < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      dir.up do
        Publication.add_translation_fields! sub_title: :string
        Portfolio.add_translation_fields! sub_title: :string
      end

      dir.down do
        remove_column :publication_translations, :sub_title
        remove_column :portfolio_translations, :sub_title
      end
    end
  end
end
