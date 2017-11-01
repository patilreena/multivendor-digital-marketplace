json.array!(@orders) do |order|
  json.extract! order, :id, :guest_token, :total_amount, :status, :user_id, :product_id_id
  json.url order_url(order, format: :json)
end
