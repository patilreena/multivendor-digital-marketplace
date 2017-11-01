class AddPreviewUrlToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :preview_url, :text
  end
end
