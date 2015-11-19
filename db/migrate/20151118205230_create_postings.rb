class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title
      t.string :description
      t.string :timeframe
      t.string :pay

      t.references :provider, index: true, foreign_key: true
      #t.references :seeker, index: true, foreign_key: true
  
      t.timestamps null: false
    end
  end
end
