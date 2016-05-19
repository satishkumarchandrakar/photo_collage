class AlbumImage < ActiveRecord::Migration
  def change
    create_table :album_images do |t|
    t.integer :album_id
    t.string :image
    t.string :tag_line
    t.timestamps null: false
    end
   end 
end
