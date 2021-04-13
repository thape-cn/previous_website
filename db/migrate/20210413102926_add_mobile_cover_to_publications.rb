class AddMobileCoverToPublications < ActiveRecord::Migration[6.1]
  def change
    add_column :publications, :mobile_cover_jpg, :string
    add_column :publications, :mobile_cover_webp, :string
  end
end
