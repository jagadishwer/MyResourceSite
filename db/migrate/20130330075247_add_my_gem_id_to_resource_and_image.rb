class AddMyGemIdToResourceAndImage < ActiveRecord::Migration
  def change
    add_column :resources, :my_gem_id, :integer
    add_column :images, :my_gem_id, :integer
  end
end