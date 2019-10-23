class CreateMapContact < ActiveRecord::Migration[6.0]
  def change
    create_table :map_contacts do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.string :fax
    end
  end
end
