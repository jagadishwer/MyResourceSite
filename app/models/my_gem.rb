class MyGem < ActiveRecord::Base
  attr_accessible :instructions, :name,:images_attributes,:resources_attributes
  has_many :images, :as => :imagable
  has_many :resources
  accepts_nested_attributes_for :images
  accepts_nested_attributes_for :resources
  # accepts_nested_attributes_for :recipes, :allow_destroy => true
end
