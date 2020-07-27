class CreateWorkTypePages < ActiveRecord::Migration[6.0]
  def change
    create_table :work_type_pages do |t|
      t.string :resdential_jpg
      t.string :resdential_webp
      t.string :demonstration_zone_jpg
      t.string :demonstration_zone_webp
      t.string :mixed_used_tod_jpg
      t.string :mixed_used_tod_webp
      t.string :commercial_jpg
      t.string :commercial_webp
      t.string :supertall_jpg
      t.string :supertall_webp
      t.string :cultural_jpg
      t.string :cultural_webp
      t.string :education_jpg
      t.string :education_webp
      t.string :office_jpg
      t.string :office_webp
      t.string :urban_design_jpg
      t.string :urban_design_webp
      t.string :medical_care_jpg
      t.string :medical_care_webp
      t.string :hospitality_jpg
      t.string :hospitality_webp
      t.string :urban_planning_jpg
      t.string :urban_planning_webp
      t.string :landscape_jpg
      t.string :landscape_webp
      t.string :interior_jpg
      t.string :interior_webp

      t.timestamps
    end
    WorkTypePage.create
  end
end
