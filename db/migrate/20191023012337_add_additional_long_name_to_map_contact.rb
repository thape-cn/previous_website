class AddAdditionalLongNameToMapContact < ActiveRecord::Migration[6.0]
  def change
    add_column :map_contacts, :long_name, :string
    reversible do |dir|
      dir.up do
        MapContact.add_translation_fields! long_name: :text
      end

      dir.down do
        remove_column :map_contact_translations, :long_name
      end
    end
  end
end
