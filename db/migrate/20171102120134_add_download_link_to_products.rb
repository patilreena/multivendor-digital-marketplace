class AddDownloadLinkToProducts < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :products, :asset
  end

  def self.down
    remove_attachment :products, :asset
  end
end