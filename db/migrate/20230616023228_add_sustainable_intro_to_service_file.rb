class AddSustainableIntroToServiceFile < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        ServiceFile.add_translation_fields! sustainable_intro: :text
      end

      dir.down do
        remove_column :service_files, :sustainable_intro
      end
    end
  end
end
