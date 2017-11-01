class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text :url
      t.string :type
      t.references :product, foreign_key: true
      t.text :key

      t.timestamps
    end
  end
end
