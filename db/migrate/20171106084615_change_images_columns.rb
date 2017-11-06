class ChangeImagesColumns < ActiveRecord::Migration[5.0]
  def self.up
  	add_column :images, :description, :string
  	add_attachment :images, :image
  	remove_column :images, :key
  	remove_column :images, :url
  end

  def self.down
    remove_attachment :images, :image
    add_column :images, :key, :string
  	add_column :images, :url, :text
  	remove_column :images, :description
  end

end
