class CreateCasePictures < ActiveRecord::Migration[5.2]
  def change
    remove_column :cases, :album
    create_table :case_pictures do |t|
      t.references :case, foreign_key: true
      t.string :album

      t.timestamps
    end
  end
end
