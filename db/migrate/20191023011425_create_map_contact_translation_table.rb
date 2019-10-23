class CreateMapContactTranslationTable < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up do
        MapContact.create_translation_table! name: :string, address: :string, tel: :string, fax: :string
      end

      dir.down do
        MapContact.drop_translation_table!
      end
    end
  end
end
