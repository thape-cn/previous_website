namespace :fill do
  desc 'Filling news from URL'
  task :news, [:url] => [:environment] do |task, args|
    news_url = args[:url]
    response = HTTP.get(news_url)
    html_doc = Nokogiri::HTML(response.body.to_s)
    article=html_doc.css('div.img')
    img_nodes = article.xpath(".//img[@src]")
    download_news_image(news_url, img_nodes)
    replace_image_with_download_imgs(news_url, img_nodes)
    title_nodes = article.css("div.title")
    title = title_nodes[0].content
    news_id = news_url.split('/')[-1]
    Info.create(id: news_id, title: title, introduction: title, content: article.children.to_s)
  end

  def download_news_image(url, img_nodes)
    host_uri = URI(url)
    save_path = news_image_save_path(url)
    imgs_paths = img_nodes.inject([]) do |uris, node|
      uris << node.attr('src').strip
    end.uniq.reject(&:blank?)
    imgs_paths.each do |path|
      filename = path.split('/')[-1]
      puts "Downloading: " + path
      download_image_url = if path.start_with? '/sites/'
        "#{host_uri.scheme}://#{host_uri.host}#{path}"
      else
        path
      end
      resp = HTTP.get(download_image_url)
      open(File.join(save_path, URI::decode(filename)), "wb") do |file|
        file.write(resp.body)
      end
    end
  end

  def replace_image_with_download_imgs(url, img_nodes)
    news_id = url.split('/')[-1]
    news_image_path = "/news_images/#{news_id}"
    img_nodes.each do |node|
      next if node.attr('src').blank?
      filename = node.attr('src').strip.split('/')[-1]
      node['src'] = "#{news_image_path}/#{filename}"
      parent_node = node.parent
      if parent_node.name == 'span'
        if parent_node.parent['align'] == 'left'
          parent_node.parent['align'] = 'center'
        end
        parent_node.parent['style'] = 'text-align: center;'
      else
        parent_node['style'] = 'text-align: center;'
      end
    end
  end

  def news_image_save_path(url)
    news_id = url.split('/')[-1]
    save_path = "public/news_images/#{news_id}"
    Dir.mkdir save_path unless Dir.exist?(save_path)
    save_path
  end
end
