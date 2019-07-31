class AddPositionToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :position, :integer, default: 0
    Person.all.each do |person|
      person.update(position: person.id)
    end
  end
end
