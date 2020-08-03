class AddAboutPageTranslation < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up do
        AboutPage.create_translation_table! thape_intro: :string
        ServiceFile.create_translation_table! building_intro: :string,
          interior_intro: :string,
          planning_intro: :string,
          landscape_intro: :string,
          vetting_intro: :string,
          consluting_intro: :string,
          vrtech_intro: :string
      end

      dir.down do
        ServiceFile.drop_translation_table!
        AboutPage.drop_translation_table!
      end
    end
  end
end
