namespace :cdn do
  desc 'Download Home image to local'
  task download_home: :environment do |_task, _args|
    h = Home.first
    download h.banner_1
    download h.banner_1
    download h.banner_2
    download h.banner_3
    download h.banner_4
    download h.banner_5

    download h.banner_phone_1
    download h.banner_phone_2
    download h.banner_phone_3
    download h.banner_phone_4
    download h.banner_phone_5

    download h.project_img_1
    download h.project_img_2
    download h.project_img_3

    download h.project_phone_img_1
    download h.project_phone_img_2
    download h.project_phone_img_3

    download h.info_img_1
    download h.info_img_2
    download h.info_img_3

    download h.info_high_img
    download h.info_high_phone_img
  end

  def download(image_uploader)
    image_current_path = Rails.root.join('public', image_uploader.current_path)
    download_dir = File.dirname(image_current_path)

    FileUtils.mkdir_p download_dir

    internal_url = image_uploader.url.to_s
        .sub('https://thape-upload.oss-cn-shanghai.aliyuncs.com/',
             'https://thape-upload.oss-cn-shanghai-internal.aliyuncs.com')
    image = MiniMagick::Image::open(internal_url)
    image.write(image_current_path)
  end
end
