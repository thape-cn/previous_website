class Info < ApplicationRecord
  mount_uploader :picture, PictureUploader
  mount_uploader :banner, BannerUploader
  mount_uploader :snapshot, SnapshotUploader
  mount_uploader :pdf_file, PdfFileUploader

  has_many :pictures

  validates :title, presence: true
  validates :introduction, presence: true
  validates :content, presence: true

  before_create :set_new_position

  def self.category_options
    [['公司新闻', 1], ['行业会议', 2], ['专业奖项', 3]]
  end

  def content_convert_to_jpeg
    doc = Nokogiri::HTML(content.to_s)
    imgs = doc.xpath("//img")
    imgs.each_with_index do |img, index|
      img_src = img['src']
      next unless img_src.start_with?('data:image/jpeg;base64,')
      img_idx = img_src.to_s.index(",") + 1
      ext = "." + img_src.to_s[/\/\w*;/][1...-1]
      FileUtils.mkdir_p(Rails.root.join("public", "news_images", id.to_s))
      filename = "i#{index}"
      tgt_dir = Rails.root.join("public", "news_images", id.to_s, filename + ext)
      File.open(tgt_dir, "wb") do |f|
        f.write(Base64.decode64(img_src.to_s[img_idx..]))
      end
      image_file_name = "/news_images/" + id.to_s + "/" + filename + ext
      img['src']=image_file_name
    end
    content = doc.to_html
  end

  def content_convert_to_gif
    doc = Nokogiri::HTML(content.to_s)
    imgs = doc.xpath("//img")
    imgs.each_with_index do |img, index|
      img_src = img['src']
      next unless img_src.start_with?('data:image/gif;base64,')
      img_idx = img_src.to_s.index(",") + 1
      ext = "." + img_src.to_s[/\/\w*;/][1...-1]
      FileUtils.mkdir_p(Rails.root.join("public", "news_images", id.to_s))
      filename = "g#{index}"
      tgt_dir = Rails.root.join("public", "news_images", id.to_s, filename + ext)
      File.open(tgt_dir, "wb") do |f|
        f.write(Base64.decode64(img_src.to_s[img_idx..]))
      end
      image_file_name = "/news_images/" + id.to_s + "/" + filename + ext
      img['src']=image_file_name
    end
    content = doc.to_html
  end

  private

  def set_new_position
    self.position = Info.count
  end
end
