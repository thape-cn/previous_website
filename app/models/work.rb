class Work < ApplicationRecord
  has_many :work_project_types, dependent: :destroy
  has_many :project_types, through: :work_project_types

  has_many :work_residential_types, dependent: :destroy
  has_many :residential_types, through: :work_residential_types

  belongs_to :city

  has_many :work_pictures
  accepts_nested_attributes_for :work_pictures

  mount_uploader :snapshot_jpg, JpgUploader
  mount_uploader :snapshot_webp, WebpUploader

  translates :project_name, :client, :services, :team, :cooperation, :awards,
    :design_completion_lines, :construction_completion_lines, :architecture_area_lines

  def project_types_ids
    @_project_types_ids ||= project_types.pluck(:id)
  end

  def project_types_ids=(values)
    select_values = values.reject(&:blank?).map(&:to_i)
    if new_record?
      (select_values - project_types_ids).each do |to_new_id|
        work_project_types.build(project_type_id: to_new_id)
      end
    else
      (project_types_ids - select_values).each do |to_destroy_id|
        work_project_types.find_by(project_type_id: to_destroy_id).destroy
      end
      (select_values - project_types_ids).each do |to_add_id|
        work_project_types.create(project_type_id: to_add_id)
      end
    end
  end

  def residential_types_ids
    @_residential_types_ids ||= residential_types.pluck(:id)
  end

  def residential_types_ids=(values)
    select_values = values.reject(&:blank?).map(&:to_i)
    if new_record?
      (select_values - residential_types_ids).each do |to_new_id|
        work_residential_types.build(residential_type_id: to_new_id)
      end
    else
      (residential_types_ids - select_values).each do |to_destroy_id|
        work_residential_types.find_by(residential_type_id: to_destroy_id).destroy
      end
      (select_values - residential_types_ids).each do |to_add_id|
        work_residential_types.create(residential_type_id: to_add_id)
      end
    end
  end
end
