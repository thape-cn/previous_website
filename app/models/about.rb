class About < ApplicationRecord
  translates :about_title, :about_content, :about_img_alt

  mount_uploader :about_img, BannerUploader
end
