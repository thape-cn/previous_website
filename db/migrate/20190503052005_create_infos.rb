class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :title
      t.text :introduction
      t.text :content
      t.string :picture
      t.integer :category
      t.integer :pushlist
      t.string :banner
      t.string :snapshot

      t.timestamps
    end
  end
end
