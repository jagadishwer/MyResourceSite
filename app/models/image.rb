class Image < ActiveRecord::Base
 attr_accessible :image, :name, :polymorphic => true
  belongs_to :imagable
  
  mount_uploader :image, ImageUploader
#   def name=(name)
#
#   end

end
