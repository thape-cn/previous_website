class CreateGuestMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :guest_messages do |t|
      t.text :message
      t.string :name
      t.string :company
      t.string :contact_details

      t.timestamps
    end
  end
end
