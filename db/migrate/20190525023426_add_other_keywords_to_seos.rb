class AddOtherKeywordsToSeos < ActiveRecord::Migration[5.2]
  def change
    add_column :seos, :about_title, :string
    add_column :seos, :management_title, :string
    add_column :seos, :designing_title, :string
    add_column :seos, :contact_title, :string
  end
end
