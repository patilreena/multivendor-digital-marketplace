class AddThumbnailToProducts < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :products, :thumbnail
  end

  def self.down
    remove_attachment :products, :thumbnail
  end
end
