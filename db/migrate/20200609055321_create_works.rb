class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.date :design_completion
      t.date :construction_completion
      t.references :city, null: false, foreign_key: true
      t.integer :site_area
      t.integer :planning_area
      t.integer :architecture_area

      t.timestamps
    end
    reversible do |dir|
      dir.up do
        Work.create_translation_table! project_name: :string, client: :string, services: :string, team: :string, cooperation: :string, awards: :string
      end

      dir.down do
        Work.drop_translation_table!
      end
    end
  end
end
