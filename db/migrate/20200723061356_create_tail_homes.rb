class CreateTailHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :tail_homes do |t|
      t.string :new_project_photo_1
      t.string :new_project_photo_2l
      t.string :new_project_photo_3w
      t.string :new_project_photo_4
      t.string :new_project_photo_5
      t.string :new_project_photo_6

      t.timestamps
    end
  end
end
