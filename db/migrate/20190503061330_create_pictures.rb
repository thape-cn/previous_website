class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :image
      t.references :info, foreign_key: true

      t.timestamps
    end
  end
end
