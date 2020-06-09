class CreateWorkProjectTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :work_project_types do |t|
      t.references :work, null: false, foreign_key: true
      t.references :project_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
