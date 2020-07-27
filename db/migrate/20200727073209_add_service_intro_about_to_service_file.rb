class AddServiceIntroAboutToServiceFile < ActiveRecord::Migration[6.0]
  def change
    add_column :service_files, :thape_intro, :text
    add_column :service_files, :building_intro, :text
    add_column :service_files, :interior_intro, :text
    add_column :service_files, :planning_intro, :text
    add_column :service_files, :landscape_intro, :text
    add_column :service_files, :vetting_intro, :text
    add_column :service_files, :consluting_intro, :text
    add_column :service_files, :vrtech_intro, :text
  end
end
