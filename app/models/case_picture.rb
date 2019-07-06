class CasePicture < ApplicationRecord
  belongs_to :case
  mount_uploader :album, AlbumUploader
end
