class RemoveThapeIntroFromServiceFile < ActiveRecord::Migration[6.0]
  def change
    remove_column :service_files, :thape_intro, type: :text
  end
end
