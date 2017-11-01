class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product_id
end
