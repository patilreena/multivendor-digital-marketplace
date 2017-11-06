class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.text :long_description
      t.float :price
      t.float :commision
      t.string :status
      t.integer :created_by
      t.boolean :is_deleted, :null => false, :default => false
      t.boolean :is_active, :null => false, :default => true
      t.string :sku

      t.timestamps
    end
  end
end
