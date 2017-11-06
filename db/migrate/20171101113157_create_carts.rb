class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.string :guest_token
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
