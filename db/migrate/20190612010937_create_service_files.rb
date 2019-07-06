class CreateServiceFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :service_files do |t|
      t.string :interior_intro_file

      t.timestamps
    end
  end
end
