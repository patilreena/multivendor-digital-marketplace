class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :guest_token
      t.float :total_amount
      t.text :status
      t.references :user, foreign_key: true
      t.references :product_id, foreign_key: true

      t.timestamps
    end
  end
end
