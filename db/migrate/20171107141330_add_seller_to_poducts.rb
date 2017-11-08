class AddSellerToPoducts < ActiveRecord::Migration[5.0]
  def change
  	add_reference :products, :seller, foreign_key: {to_table: :users}
  end
end
