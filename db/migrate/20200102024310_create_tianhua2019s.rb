class CreateTianhua2019s < ActiveRecord::Migration[6.0]
  def change
    create_table :tianhua2019s do |t|
      t.string :name
      t.string :clerkcode
      t.string :email
      t.date :firstday
      t.decimal :fill_rate
      t.decimal :mean
      t.decimal :rank
      t.date :max_month
      t.decimal :jan
      t.decimal :feb
      t.decimal :mar
      t.decimal :apr
      t.decimal :may
      t.decimal :jun
      t.decimal :jul
      t.decimal :aug
      t.decimal :sep
      t.decimal :oct
      t.decimal :nov
      t.decimal :dec
      t.decimal :monday
      t.decimal :tuesday
      t.decimal :wednesday
      t.decimal :thursday
      t.decimal :friday
      t.decimal :max_weekday
      t.string :workno
      t.integer :prjno
      t.string :work_place
      t.string :max_serve_client
      t.string :max_projectname
      t.integer :max_workdays
      t.string :home_town
      t.string :max_parter_no
      t.string :max_parter_project1
      t.integer :max_parter_hours
      t.string :max_parter_project2
      t.string :max_parter_project3
      t.string :max_parter_name
      t.decimal :study_hours
      t.integer :learn_course
      t.decimal :study_rank
      t.string :certificate
      t.string :micro_course
      t.decimal :prj_area
      t.string :teacher
      t.string :upgrade_postname

      t.timestamps
    end
  end
end
