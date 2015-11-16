class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :photo_url
      t.string :city
      t.string :email
      t.string :phone_number
      t.text :bio
    end
  end
end
