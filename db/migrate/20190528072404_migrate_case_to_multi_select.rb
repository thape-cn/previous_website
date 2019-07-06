class MigrateCaseToMultiSelect < ActiveRecord::Migration[5.2]
  def change
    Case.all.each do |c|
      c.professional = "[\"#{c.professional.to_i}\"]"
      c.market = "[\"#{c.market.to_i}\"]"
      c.save
    end
  end
end
