namespace :convert_img do
  desc "Decode base64 jpeg and save in files"
  task convert_jpeg: :environment do
    Info.all.find_each do |k|
      c=k.content_convert_to_jpeg
      k.update(content: c)
    end
  end

  desc "Decode base64 gif and save in files"
  task convert_gif: :environment do
    Info.all.find_each do |k|
      c=k.content_convert_to_gif
      k.update(content: c)
    end
  end
end
