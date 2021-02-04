# frozen_string_literal: true

namespace :fill_lat_lng do
  desc 'Export the CSV file'
  task fill: :environment do
    Work.where(coordinate_lat: nil).each do |work|
      g = Geocoder.search(work.project_name)
      if g.first.present? && g.first.coordinates.present?
        puts "#{work.project_name}: #{g.first.coordinates}"
        work.coordinate_lat = g.first.coordinates.split(',')[0]
        work.coordinate_lng = g.first.coordinates.split(',')[1]
        work.save
      end
    end
  end
end
