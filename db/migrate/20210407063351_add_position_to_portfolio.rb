class AddPositionToPortfolio < ActiveRecord::Migration[6.1]
  def change
    add_column :portfolios, :position, :integer, default: 0
    add_column :publications, :position, :integer, default: 0
  end
end
