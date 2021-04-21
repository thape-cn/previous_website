class AddPageCoverToPublications < ActiveRecord::Migration[6.1]
  def change
    add_column :publications, :page_cover, :string
  end
end
