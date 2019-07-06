class CreateAboutTranslations < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        About.create_translation_table!({
            :about_title => :string,
            :about_content => :text,
            :about_img_alt => :string
          }, {
            :migrate_data => true
        })
      end

      dir.down do
        About.drop_translation_table! :migrate_data => true
      end
    end
  end
end
