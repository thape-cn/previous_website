class Person < ApplicationRecord
  translates :name, :title, :introduce
  validates_uniqueness_of :url_name

  mount_uploader :avatar, AvatarUploader
  mount_uploader :photo, PhotoUploader
end
