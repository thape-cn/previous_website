namespace :convert_img do
  desc "Decode base64 jpeg and save in files"
  task convert_jpeg: :environment do
    Info.all.find_each do |k|
      doc = Nokogiri::HTML(k.content.to_s)
      imgs = doc.xpath("//img")
      imgs.each_with_index do |img, index|
        img_src = img['src']
        next unless img_src.start_with?('data:image/jpeg;base64,')
        img_idx = img_src.to_s.index(",") + 1
        ext = "." + img_src.to_s[/\/\w*;/][1...-1]
        FileUtils.mkdir_p(Rails.root.join("public", "news_images", k.id.to_s))
        filename = "i#{index}"
        tgt_dir = Rails.root.join("public", "news_images", k.id.to_s, filename + ext)
        File.open(tgt_dir, "wb") do |f|
          f.write(Base64.decode64(img_src.to_s[img_idx..]))
        end
        image_file_name = "/news_images/" + k.id.to_s + "/" + filename + ext
        img['src']=image_file_name
      end
      k.content = doc.to_html
      k.save
    end
  end

  desc "Decode base64 gif and save in files"
  task convert_gif: :environment do
    Info.all.find_each do |k|
      doc = Nokogiri::HTML(k.content.to_s)
      imgs = doc.xpath("//img")
      imgs.each_with_index do |img, index|
        img_src = img['src']
        next unless img_src.start_with?('data:image/gif;base64,')
        img_idx = img_src.to_s.index(",") + 1
        ext = "." + img_src.to_s[/\/\w*;/][1...-1]
        FileUtils.mkdir_p(Rails.root.join("public", "news_images", k.id.to_s))
        filename = "g#{index}"
        tgt_dir = Rails.root.join("public", "news_images", k.id.to_s, filename + ext)
        File.open(tgt_dir, "wb") do |f|
          f.write(Base64.decode64(img_src.to_s[img_idx..]))
        end
        image_file_name = "/news_images/" + k.id.to_s + "/" + filename + ext
        img['src']=image_file_name
      end
      k.content = doc.to_html
      k.save
    end
  end
end
