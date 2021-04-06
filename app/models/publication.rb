class Publication < ApplicationRecord
  translates :title
  mount_uploader :pdf_file, PdfFileUploader
  mount_uploader :cover_jpg, JpgPngUploader
  mount_uploader :cover_webp, WebpUploader
  enum category_status: %i[monographs standard_specification paper_patent]
end
