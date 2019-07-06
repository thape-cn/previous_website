class CreatePersonTranslations < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        Person.create_translation_table!({
            :name => :string,
            :title => :string,
            :introduce => :text
          }, {
            :migrate_data => true
        })
      end

      dir.down do
        Person.drop_translation_table! :migrate_data => true
      end
    end
  end
end
