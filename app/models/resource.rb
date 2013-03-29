class Resource < ActiveRecord::Base
  attr_accessible :url
  belongs_to :my_gem
end
