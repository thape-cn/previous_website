class AddPageCoverToPortfolios < ActiveRecord::Migration[6.1]
  def change
    add_column :portfolios, :page_cover, :string
  end
end
