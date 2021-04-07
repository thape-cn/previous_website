class AddHeightWidthPixelToPublications < ActiveRecord::Migration[6.1]
  def change
    add_column :publications, :pixel_height, :integer, default: 900
    add_column :publications, :pixel_width, :integer, default: 700
    add_column :portfolios, :pixel_height, :integer, default: 900
    add_column :portfolios, :pixel_width, :integer, default: 700
  end
end
