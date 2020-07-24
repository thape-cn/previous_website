class TailHome < ApplicationRecord
  mount_uploader :new_project_photo_1, PictureUploader
  mount_uploader :new_project_photo_2w, PictureUploader
  mount_uploader :new_project_photo_3l, PictureUploader
  mount_uploader :new_project_photo_4, PictureUploader
  mount_uploader :new_project_photo_5, PictureUploader
  mount_uploader :new_project_photo_6, PictureUploader
end
