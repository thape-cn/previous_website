class CreateProjectMessages < ActiveRecord::Migration[7.2]
  def change
    create_table :project_messages do |t|
      t.string :name
      t.string :phone
      t.string :company
      t.string :project_type
      t.string :service_type
      t.string :project_area
      t.text :message
      t.integer :spam_score

      t.timestamps
    end
  end
end
