class AddMultiLineDateToWorks < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up do
        Work.add_translation_fields! design_completion_lines: :string
        Work.add_translation_fields! construction_completion_lines: :string
        Work.add_translation_fields! architecture_area_lines: :string
      end

      dir.down do
        remove_column :work_translations, :design_completion_lines
        remove_column :work_translations, :construction_completion_lines
        remove_column :work_translations, :architecture_area_lines
      end
    end
  end
end
