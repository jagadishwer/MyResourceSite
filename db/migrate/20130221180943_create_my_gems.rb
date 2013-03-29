class CreateMyGems < ActiveRecord::Migration
  def change
    create_table :my_gems do |t|
      t.string :name
      t.string :instructions

      t.timestamps
    end
  end
end
