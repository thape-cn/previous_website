class CreateProjectTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :project_types do |t|
      t.string :cn_name
      t.string :en_name

      t.timestamps
    end
  end
end
