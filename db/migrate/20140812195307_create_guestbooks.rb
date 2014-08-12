class CreateGuestbooks < ActiveRecord::Migration
  def change
    create_table :guestbooks do |t|
      t.integer :tenant_id,     null: false
      t.string :title
      t.text :content
      t.integer :status, default: 0
      t.string :originator_email
      t.string :originator_name
      t.string :verification_token

      t.timestamps
    end
  end
end
