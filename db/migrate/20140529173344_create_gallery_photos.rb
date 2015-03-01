class CreateGalleryPhotos < ActiveRecord::Migration
  def change
    create_table :gallery_photos do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
