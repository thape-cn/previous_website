class Portfolio < ApplicationRecord
  translates :title
  mount_uploader :pdf_file, PdfFileUploader
  mount_uploader :cover_jpg, JpgUploader
  mount_uploader :cover_webp, WebpUploader
end
