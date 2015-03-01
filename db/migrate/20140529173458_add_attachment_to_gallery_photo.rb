class AddAttachmentToGalleryPhoto < ActiveRecord::Migration
  def self.up
    add_attachment :gallery_photos, :photo
  end

  def self.down
    remove_attachment :gallery_photos, :photo
  end
end
