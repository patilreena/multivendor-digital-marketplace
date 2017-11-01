class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :method
      t.string :status
      t.string :trans_id
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
