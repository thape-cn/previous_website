require 'csv'

namespace :tianhua_bill do
  desc 'Import the tianhua 2019'
  task :import_tianhua2019_data, [:csv_file_path] => [:environment] do |_task, args|
    csv_file_path = args[:csv_file_path]
    Tianhua2019.delete_all
    CSV.foreach(csv_file_path, headers: true) do |csv|
      Tianhua2019.create(csv.to_hash)
    end
  end

  desc 'Sent tianhua 2019 bill notification'
  task sent_notification: :environment do |_task, args|
    Tianhua2019.order(clerkcode: :desc).find_each do |t|
      next if t.email.blank?
      wechar_user_id = t.email.split('@')[0]
      # Wechat.api.news_message_send('guochunzhong', '某某的天华年度账单', '一起回顾您与天华的2019',
      #     'https://www.thape.com/tianhua2019s/017081',
      #     'https://www.thape.com/assets/news-96f22d141a12af15446966b9d2efc7601682cfa58abe161eb65223153e9c3d6a.jpg')
      puts "#{t.clerkcode}: #{t.name} #{wechar_user_id}"
    end
  end
end
