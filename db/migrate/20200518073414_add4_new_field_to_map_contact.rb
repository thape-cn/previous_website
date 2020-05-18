class Add4NewFieldToMapContact < ActiveRecord::Migration[6.0]
  def change
    add_column :map_contacts, :media_phone, :string
    add_column :map_contacts, :marketing_phone, :string
    add_column :map_contacts, :website_url, :string
    reversible do |dir|
      dir.up do
        MapContact.add_translation_fields! website_name: :string
      end

      dir.down do
        remove_column :map_contact_translations, :website_name
      end
    end
  end
end
