class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :organization_name
      t.string :POC_first_name
      t.string :POC_last_name
      t.string :photo_url
      t.string :city
      t.string :email
      t.string :phone_number
      t.text :bio
      t.integer :user_id
    end
  end
end
