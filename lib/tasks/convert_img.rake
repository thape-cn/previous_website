namespace :convert_img do
  desc "Decode base64 jpeg and save in files"
  task convert_jpeg: :environment do
    Info.all.find_each do |k|
      k.content_convert_to_jpeg
      k.save
    end
  end

  desc "Decode base64 gif and save in files"
  task convert_gif: :environment do
    Info.all.find_each do |k|
      k.content_convert_to_gif
      k.save
    end
  end
end
