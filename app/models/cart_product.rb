class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  belongs_to :license
  belongs_to :order
end
