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

  translates :project_name, :client, :services, :team, :cooperation, :awards
end
