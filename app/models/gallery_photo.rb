# == Schema Information
#
# Table name: gallery_photos
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  name               :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class GalleryPhoto < ActiveRecord::Base
  has_attached_file :photo,
                    :styles => {
                        medium: '300x300>',
                         thumb: '100x100>'
                    },
                    default_url: '/images/:style/missing.png'

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
