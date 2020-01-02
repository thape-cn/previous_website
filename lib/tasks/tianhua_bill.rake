require 'csv'

namespace :tianhua_bill do
  desc 'Import the tianhua 2019'
  task :tianhua2019, [:csv_file_path] => [:environment] do |_task, args|
    csv_file_path = args[:csv_file_path]
    CSV.foreach(csv_file_path, headers: true) do |csv|
      byebug
    end
  end
end
