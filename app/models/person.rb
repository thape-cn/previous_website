class Person < ApplicationRecord
  translates :name, :title, :introduce

  mount_uploader :avatar, AvatarUploader
  mount_uploader :photo, PhotoUploader
end
