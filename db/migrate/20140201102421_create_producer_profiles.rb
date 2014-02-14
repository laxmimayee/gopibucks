class CreateProducerProfiles < ActiveRecord::Migration
  def change
    create_table :producer_profiles do |t|
      t.string :Street
      t.string :HomeTown
      t.string :StateProvince
      t.integer :Zipcode
      t.text :About
      t.string :Artist_blog
      t.string :Facebook
      t.string :Twitter
      t.string :MySpace
      t.string :Soundcloud
      t.string :GooglePlus
      t.string :YouTube
      t.string :Soundclick
      t.string :Instagram
      t.integer :users_id
      t.timestamps
    end
  end
end
