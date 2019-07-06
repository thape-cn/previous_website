namespace :order do
  desc 'Reverse news starting from position'
  task :reverse_news, [:position] => [:environment] do |task, args|
    start_position = args[:position].to_i
    info_ids = Info.where('position >= ?', start_position).pluck(:id)
    info_ids.reverse.each_with_index do |id, index|
      info = Info.find(id)
      info.update(position: index + start_position)
    end
  end
end
