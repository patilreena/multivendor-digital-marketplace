class CreateCartProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_products do |t|
      t.references :cart, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :product_quantity
      t.references :license, foreign_key: true
      t.references :order, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
