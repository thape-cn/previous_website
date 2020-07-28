class TailHome < ApplicationRecord
  mount_uploader :background_1, PictureUploader
  mount_uploader :background_2, PictureUploader
  mount_uploader :background_3, PictureUploader
  mount_uploader :background_4, PictureUploader
  mount_uploader :background_5, PictureUploader
  mount_uploader :background_6, PictureUploader

  mount_uploader :background_1_mobile, PictureUploader
  mount_uploader :background_2_mobile, PictureUploader
  mount_uploader :background_3_mobile, PictureUploader
  mount_uploader :background_4_mobile, PictureUploader
  mount_uploader :background_5_mobile, PictureUploader
  mount_uploader :background_6_mobile, PictureUploader

  mount_uploader :background_1_pad, PictureUploader
  mount_uploader :background_2_pad, PictureUploader
  mount_uploader :background_3_pad, PictureUploader
  mount_uploader :background_4_pad, PictureUploader
  mount_uploader :background_5_pad, PictureUploader
  mount_uploader :background_6_pad, PictureUploader

  mount_uploader :new_project_photo_1, PictureUploader
  mount_uploader :new_project_photo_2l, PictureUploader
  mount_uploader :new_project_photo_3w, PictureUploader
  mount_uploader :new_project_photo_4, PictureUploader
  mount_uploader :new_project_photo_5, PictureUploader
  mount_uploader :new_project_photo_6, PictureUploader

  mount_uploader :info_1_photo, PictureUploader
  mount_uploader :info_2_photo, PictureUploader
  mount_uploader :info_3_photo, PictureUploader

  mount_uploader :hero_news_photo, PictureUploader
end
