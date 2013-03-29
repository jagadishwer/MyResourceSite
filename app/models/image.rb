class Image < ActiveRecord::Base
  belongs_to :imagable
  attr_accessible :image, :polymorphic => true
   mount_uploader :file, FileUploader

end
