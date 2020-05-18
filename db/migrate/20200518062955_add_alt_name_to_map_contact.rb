class AddAltNameToMapContact < ActiveRecord::Migration[6.0]
  def change
    add_column :map_contacts, :alt_name, :string
    change_column :map_contact_translations, :long_name, :string
    reversible do |dir|
      dir.up do
        MapContact.add_translation_fields! alt_name: :string
      end

      dir.down do
        remove_column :map_contact_translations, :alt_name
      end
    end
  end
end
