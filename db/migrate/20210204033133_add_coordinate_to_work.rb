class AddCoordinateToWork < ActiveRecord::Migration[6.1]
  def change
    add_column :works, :coordinate_lat, :string
    add_column :works, :coordinate_lng, :string
  end
end
