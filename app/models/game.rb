class Game < ActiveRecord::Base
     belongs_to :user
    has_many :comments
   mount_uploader :image_url, CruduploaderUploader
end
