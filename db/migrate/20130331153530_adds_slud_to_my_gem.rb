class AddsSludToMyGem < ActiveRecord::Migration
  def up
    add_column :my_gems,:slug,:string
    add_index :my_gems, :slug
  end

  def down
     remove_column :my_gems,:slug
  end
   
end
