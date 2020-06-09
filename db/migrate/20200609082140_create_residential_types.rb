class CreateResidentialTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :residential_types do |t|
      t.string :cn_name
      t.string :en_name

      t.timestamps
    end
    create_table :work_residential_types do |t|
      t.references :work, null: false, foreign_key: true
      t.references :residential_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
