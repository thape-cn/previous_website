namespace :font do
  desc 'Generate dynamic tianghua-font text'
  task generate_tianhua_font_text: :environment do |task, args|
    home = Home.first
    static_content = File.read(Rails.root.join('config', 'static_tianhua_font_contain_words.txt').to_s)
    File.open(Rails.root.join('config', 'tianhua_font_contain_words.txt').to_s, 'w') do |f|
      f.puts static_content
      f.puts home.title_1
      f.puts home.title_2
      f.puts home.title_3
      f.puts home.title_4
      f.puts home.title_5
      f.puts home.project_title_1
      f.puts home.project_title_2
      f.puts home.project_title_3
    end
  end
end
