class AddOrderStatusToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :order_status, foreign_key: true
  end
end
