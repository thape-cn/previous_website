class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :title
      t.string :name
      t.string :market
      t.string :area
      t.string :address
      t.string :service
      t.string :schedule
      t.string :start
      t.string :team
      t.string :album
      t.string :snapshot

      t.timestamps
    end
  end
end
