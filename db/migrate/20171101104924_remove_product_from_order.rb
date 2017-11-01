class RemoveProductFromOrder < ActiveRecord::Migration[5.0]
  def change
  	remove_reference :orders, :product_id
  end
end
