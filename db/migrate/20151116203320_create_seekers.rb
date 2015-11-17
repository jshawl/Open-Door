class CreateSeekers < ActiveRecord::Migration
  def change
    create_table :seekers do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :photo_url
      t.string :city
      t.string :email
      t.string :phone_number
      t.text :bio
      t.integer :user_id
    end
  end
end
