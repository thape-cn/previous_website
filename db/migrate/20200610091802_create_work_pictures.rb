class CreateWorkPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :work_pictures do |t|
      t.string :album_jpg
      t.string :album_webp
      t.references :work, null: false, foreign_key: true

      t.timestamps
    end
  end
end
