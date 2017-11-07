class Order < ApplicationRecord
  belongs_to :user , optional: true
  belongs_to :order_status
  has_many :order_items
  before_create :set_order_status
  # before_save :update_total_amount

  def total_amount
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
  
private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:total_amount] = total_amount
  end
end
