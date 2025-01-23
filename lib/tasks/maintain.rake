namespace :maintain do
  desc 'Clean empty work pictures'
  task clean_empty_work_pictures: :environment do |_task, _args|
    Work.find_each do |w|
      w.work_pictures.select {|wp| wp.album_jpg.blank? && wp.album_webp.blank?}.map(&:destroy)
    end
  end
end
