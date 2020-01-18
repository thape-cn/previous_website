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
    Tianhua2019.where("clerkcode > '000081'").order(clerkcode: :desc).find_each do |t|
      next if t.email.blank?
      wechar_user_id = t.email.split('@')[0]
      puts "#{t.clerkcode}: #{t.name} #{wechar_user_id}"
      Wechat.api.news_message_send(wechar_user_id, "#{t.name}的天华年度账单", '一起回顾您与天华的2019',
          "https://www.thape.com/tianhua2019s/#{t.clerkcode}",
          'https://www.thape.com/assets/tianhua2019-banner-982f644c73010030a2a966238d252304cfe95f42da5102e5ddd6baf38d16dc25.png')
    end
  end
end
